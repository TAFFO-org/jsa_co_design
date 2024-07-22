; ModuleID = './build/bin/fixed/mvt/8/mvt-standard-1-fixed-8.out.ll'
source_filename = "./sources/mvt.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x1_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@x2_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !2
@stderr = external global %struct._IO_FILE*, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !4
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !17
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -65536
  %lampsim3 = bitcast i32 %lampsim2 to float
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %lampsim3, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul4 = fmul float %x.0, %x.0
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -65536
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !20
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -65536
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -65536
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -65536
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -65536
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -65536
  %lampsim31 = bitcast i32 %lampsim30 to float
  %cmp7 = fcmp oge float %lampsim31, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %lampsim31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %lampsim31, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %lampsim23, %if.end ]
  %flag.2 = phi i32 [ %flag.0, %for.body ], [ %flag.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !26 !taffo.funinfo !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !26 !taffo.funinfo !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.start !29 {
entry:
  %A.u1_31fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !30
  %x1.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !33, !taffo.target !35
  %x2.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !36, !taffo.target !37
  %y_1.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !30
  %y_2.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !30
  %arraydecay.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x1.u3_29fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay6.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x2.u3_29fixp, i32 0, i32 0, !taffo.info !36, !taffo.target !37
  %arraydecay7.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_1.u1_31fixp, i32 0, i32 0, !taffo.info !30
  %arraydecay8.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_2.u1_31fixp, i32 0, i32 0, !taffo.info !30
  %arraydecay9.u1_31fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !30
  call void @init_array.2_fixp(i32 20, i32* %arraydecay.u3_29fixp, i32* %arraydecay6.u3_29fixp, i32* %arraydecay7.u1_31fixp, i32* %arraydecay8.u1_31fixp, [20 x i32]* %arraydecay9.u1_31fixp), !taffo.info !38, !taffo.constinfo !39
  call void @timer_start(), !taffo.constinfo !40
  %arraydecay10.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x1.u3_29fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay11.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x2.u3_29fixp, i32 0, i32 0, !taffo.info !36, !taffo.target !37
  %arraydecay12.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_1.u1_31fixp, i32 0, i32 0, !taffo.info !30
  %arraydecay13.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y_2.u1_31fixp, i32 0, i32 0, !taffo.info !30
  %arraydecay14.u1_31fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !30
  call void @kernel_mvt.1_fixp(i32 20, i32* %arraydecay10.u3_29fixp, i32* %arraydecay11.u3_29fixp, i32* %arraydecay12.u1_31fixp, i32* %arraydecay13.u1_31fixp, [20 x i32]* %arraydecay14.u1_31fixp), !taffo.info !38, !taffo.constinfo !39
  call void @timer_stop(), !taffo.constinfo !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !41
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !43
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x1.u3_29fixp, i32 0, i32 %i.0, !taffo.info !33, !taffo.target !35
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !33, !taffo.target !35
  %0 = uitofp i32 %u3_29fixp to float, !taffo.info !33, !taffo.target !35
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -65536
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x41C0000000000000, !taffo.info !33, !taffo.target !35
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -65536
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i32 0, i32 %i.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx15, align 4, !taffo.info !45, !taffo.target !35
  %arrayidx16.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x2.u3_29fixp, i32 0, i32 %i.0, !taffo.info !36, !taffo.target !37
  %u3_29fixp1 = load i32, i32* %arrayidx16.u3_29fixp, align 4, !taffo.info !36, !taffo.target !37
  %2 = uitofp i32 %u3_29fixp1 to float, !taffo.info !36, !taffo.target !37
  %lampsim6 = bitcast float %2 to i32
  %lampsim7 = and i32 %lampsim6, -65536
  %lampsim8 = bitcast i32 %lampsim7 to float
  %3 = fdiv float %lampsim8, 0x41C0000000000000, !taffo.info !36, !taffo.target !37
  %lampsim9 = bitcast float %3 to i32
  %lampsim10 = and i32 %lampsim9, -65536
  %lampsim11 = bitcast i32 %lampsim10 to float
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i32 0, i32 %i.0, !taffo.info !2
  store float %lampsim11, float* %arrayidx17, align 4, !taffo.info !46, !taffo.target !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !47, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x1_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x2_float, i32 0, i32 0)), !taffo.constinfo !50
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x1, float* noundef %x2) #0 !taffo.initweight !51 !taffo.funinfo !52 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !43
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !55
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !57, !taffo.constinfo !23
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !55
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -35184372088832
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !50
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !55, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !43
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !55
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !57, !taffo.constinfo !23
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !55
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !59
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !2
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !2
  %conv144 = fpext float %5 to double, !taffo.info !2
  %lampsim5 = bitcast double %conv144 to i64
  %lampsim6 = and i64 %lampsim5, -35184372088832
  %lampsim7 = bitcast i64 %lampsim6 to double
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %lampsim7), !taffo.constinfo !50
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !55, !taffo.constinfo !23
  br label %for.cond3, !llvm.loop !61

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !27 !taffo.funinfo !28 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt.1_fixp(i32 noundef %n, i32* noundef %x1.u3_29fixp, i32* noundef %x2.u3_29fixp, i32* noundef %y_1.u1_31fixp, i32* noundef %y_2.u1_31fixp, [20 x i32]* noundef %A.u1_31fixp) #0 !taffo.initweight !62 !taffo.funinfo !63 !taffo.sourceFunction !64 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !43
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !55
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !43
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !55
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %x1.u3_29fixp, i32 %i.0, !taffo.info !33
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !33
  %arrayidx4.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !30
  %arrayidx5.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx4.u1_31fixp, i32 0, i32 %j.0, !taffo.info !30
  %u1_31fixp3 = load i32, i32* %arrayidx5.u1_31fixp, align 4, !taffo.info !30
  %arrayidx6.u1_31fixp = getelementptr inbounds i32, i32* %y_1.u1_31fixp, i32 %j.0, !taffo.info !30
  %u1_31fixp = load i32, i32* %arrayidx6.u1_31fixp, align 4, !taffo.info !30
  %0 = lshr i32 %u1_31fixp3, 1, !taffo.info !30
  %1 = lshr i32 %u1_31fixp, 1, !taffo.info !30
  %2 = ashr i32 %0, 2, !taffo.info !30
  %3 = ashr i32 %1, 2, !taffo.info !30
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 28), !taffo.info !65
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !68
  %add.u3_29fixp = add i32 %u3_29fixp, %mul.u3_29fixp, !taffo.info !69
  %arrayidx7.u3_29fixp = getelementptr inbounds i32, i32* %x1.u3_29fixp, i32 %i.0, !taffo.info !33
  store i32 %add.u3_29fixp, i32* %arrayidx7.u3_29fixp, align 4, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !55, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !71

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !55, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !72

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc28, %for.inc27 ], !taffo.info !43
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !55
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc25, %for.inc24 ], !taffo.info !43
  %cmp15 = icmp slt i32 %j.1, %n, !taffo.info !55
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %arrayidx17.u3_29fixp = getelementptr inbounds i32, i32* %x2.u3_29fixp, i32 %i.1, !taffo.info !36
  %u3_29fixp1 = load i32, i32* %arrayidx17.u3_29fixp, align 4, !taffo.info !36
  %arrayidx18.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u1_31fixp, i32 %j.1, !taffo.info !30
  %arrayidx19.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx18.u1_31fixp, i32 0, i32 %i.1, !taffo.info !30
  %u1_31fixp4 = load i32, i32* %arrayidx19.u1_31fixp, align 4, !taffo.info !30
  %arrayidx20.u1_31fixp = getelementptr inbounds i32, i32* %y_2.u1_31fixp, i32 %j.1, !taffo.info !30
  %u1_31fixp2 = load i32, i32* %arrayidx20.u1_31fixp, align 4, !taffo.info !30
  %5 = lshr i32 %u1_31fixp4, 1, !taffo.info !30
  %6 = lshr i32 %u1_31fixp2, 1, !taffo.info !30
  %7 = ashr i32 %5, 2, !taffo.info !30
  %8 = ashr i32 %6, 2, !taffo.info !30
  %9 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 28), !taffo.info !65
  %mul21.u3_29fixp = shl i32 %9, 1, !taffo.info !68
  %add22.u3_29fixp = add i32 %u3_29fixp1, %mul21.u3_29fixp, !taffo.info !73
  %arrayidx23.u3_29fixp = getelementptr inbounds i32, i32* %x2.u3_29fixp, i32 %i.1, !taffo.info !36
  store i32 %add22.u3_29fixp, i32* %arrayidx23.u3_29fixp, align 4, !taffo.info !46
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !55, !taffo.constinfo !23
  br label %for.cond14, !llvm.loop !75

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !55, !taffo.constinfo !23
  br label %for.cond11, !llvm.loop !76

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %n, i32* noundef %x1.u3_29fixp, i32* noundef %x2.u3_29fixp, i32* noundef %y_1.u1_31fixp, i32* noundef %y_2.u1_31fixp, [20 x i32]* noundef %A.u1_31fixp) #0 !taffo.initweight !62 !taffo.funinfo !63 !taffo.sourceFunction !77 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ], !taffo.info !78, !taffo.initweight !79
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !80, !taffo.initweight !81
  br i1 %cmp, label %for.body, label %for.end33, !taffo.info !82, !taffo.initweight !84

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !85, !taffo.initweight !81
  %conv.u5_27fixp = shl i32 %rem, 27, !taffo.info !87
  %conv3.u5_27fixp = shl i32 %n, 27, !taffo.info !89
  %0 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !87
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !89
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !90
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !92
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %x1.u3_29fixp, i32 %i.0, !taffo.info !93
  %3 = lshr i32 %div.u1_31fixp, 2, !taffo.info !92
  store i32 %3, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !94
  %add = add nsw i32 %i.0, 1, !taffo.info !95, !taffo.initweight !81, !taffo.constinfo !23
  %rem4 = srem i32 %add, %n, !taffo.info !85, !taffo.initweight !84
  %conv5.u5_27fixp = shl i32 %rem4, 27, !taffo.info !87
  %conv6.u5_27fixp = shl i32 %n, 27, !taffo.info !89
  %4 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !87
  %5 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !89
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %4, i32 %5, i32 26), !taffo.info !90
  %div7.u1_31fixp = shl i32 %6, 5, !taffo.info !92
  %arrayidx8.u3_29fixp = getelementptr inbounds i32, i32* %x2.u3_29fixp, i32 %i.0, !taffo.info !96
  %7 = lshr i32 %div7.u1_31fixp, 2, !taffo.info !92
  store i32 %7, i32* %arrayidx8.u3_29fixp, align 4, !taffo.info !94
  %add9 = add nsw i32 %i.0, 3, !taffo.info !97, !taffo.initweight !81, !taffo.constinfo !23
  %rem10 = srem i32 %add9, %n, !taffo.info !85, !taffo.initweight !84
  %conv11.u5_27fixp = shl i32 %rem10, 27, !taffo.info !87
  %conv12.u5_27fixp = shl i32 %n, 27, !taffo.info !89
  %8 = lshr i32 %conv11.u5_27fixp, 1, !taffo.info !87
  %9 = lshr i32 %conv12.u5_27fixp, 1, !taffo.info !89
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 26), !taffo.info !90
  %div13.u1_31fixp = shl i32 %10, 5, !taffo.info !92
  %arrayidx14.u1_31fixp = getelementptr inbounds i32, i32* %y_1.u1_31fixp, i32 %i.0, !taffo.info !92
  store i32 %div13.u1_31fixp, i32* %arrayidx14.u1_31fixp, align 4, !taffo.info !94
  %add15 = add nsw i32 %i.0, 4, !taffo.info !99, !taffo.initweight !81, !taffo.constinfo !23
  %rem16 = srem i32 %add15, %n, !taffo.info !85, !taffo.initweight !84
  %conv17.u5_27fixp = shl i32 %rem16, 27, !taffo.info !87
  %conv18.u5_27fixp = shl i32 %n, 27, !taffo.info !89
  %11 = lshr i32 %conv17.u5_27fixp, 1, !taffo.info !87
  %12 = lshr i32 %conv18.u5_27fixp, 1, !taffo.info !89
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %11, i32 %12, i32 26), !taffo.info !90
  %div19.u1_31fixp = shl i32 %13, 5, !taffo.info !92
  %arrayidx20.u1_31fixp = getelementptr inbounds i32, i32* %y_2.u1_31fixp, i32 %i.0, !taffo.info !92
  store i32 %div19.u1_31fixp, i32* %arrayidx20.u1_31fixp, align 4, !taffo.info !94
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !78, !taffo.initweight !79
  %cmp22 = icmp slt i32 %j.0, %n, !taffo.info !80, !taffo.initweight !81
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.info !82, !taffo.initweight !84

for.body24:                                       ; preds = %for.cond21
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !101, !taffo.initweight !81
  %rem25 = srem i32 %mul, %n, !taffo.info !85, !taffo.initweight !84
  %conv26.u5_27fixp = shl i32 %rem25, 27, !taffo.info !87
  %conv27.u5_27fixp = shl i32 %n, 27, !taffo.info !89
  %14 = lshr i32 %conv26.u5_27fixp, 1, !taffo.info !87
  %15 = lshr i32 %conv27.u5_27fixp, 1, !taffo.info !89
  %16 = call i32 @llvm.sdiv.fix.i32(i32 %14, i32 %15, i32 26), !taffo.info !90
  %div28.u1_31fixp = shl i32 %16, 5, !taffo.info !92
  %arrayidx29.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !92
  %arrayidx30.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx29.u1_31fixp, i32 0, i32 %j.0, !taffo.info !92
  store i32 %div28.u1_31fixp, i32* %arrayidx30.u1_31fixp, align 4, !taffo.info !94
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !95, !taffo.initweight !81, !taffo.constinfo !23
  br label %for.cond21, !llvm.loop !103

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %inc32 = add nsw i32 %i.0, 1, !taffo.info !95, !taffo.initweight !81, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !104

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 5.750000e+00}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 5.675000e+00}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.000000e+01}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"NumRegisterParameters", i32 0}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
!17 = !{i1 false, !18}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 1.000000e+01, double 1.000000e+01}
!20 = !{!21, i1 false}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 2.000000e+00, double 2.000000e+00}
!23 = !{i1 false, i1 false}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{}
!27 = !{i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false}
!29 = !{i1 true}
!30 = !{!31, !32, i1 false, i2 -1}
!31 = !{!"fixp", i32 32, i32 31}
!32 = !{double 0.000000e+00, double 0x3FEE666666666666}
!33 = !{!34, !1, i1 false, i2 -1}
!34 = !{!"fixp", i32 32, i32 29}
!35 = !{!"x1"}
!36 = !{!34, !3, i1 false, i2 -1}
!37 = !{!"x2"}
!38 = !{i1 false, !32, i1 false, i2 -1}
!39 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!40 = !{i1 false}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double 0.000000e+00, double 2.100000e+01}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 0.000000e+00, double 1.000000e+00}
!45 = !{i1 false, !1, i1 false, i2 -1}
!46 = !{i1 false, !3, i1 false, i2 -1}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 1.000000e+00, double 2.100000e+01}
!49 = distinct !{!49, !25}
!50 = !{i1 false, i1 false, i1 false, i1 false}
!51 = !{i32 -1, i32 -1, i32 -1}
!52 = !{i32 1, !53, i32 1, !0, i32 1, !2}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 2.000000e+01, double 2.000000e+01}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 1.000000e+00, double 1.000000e+00}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 0.000000e+00}
!59 = !{i1 false, i1 false, i1 false}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25}
!62 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!63 = !{i32 1, !53, i32 1, !33, i32 1, !36, i32 1, !30, i32 1, !30, i32 1, !30}
!64 = distinct !{null}
!65 = !{!66, !67, i1 false, i2 -1}
!66 = !{!"fixp", i32 -32, i32 28}
!67 = !{double 0.000000e+00, double 9.025000e-01}
!68 = !{!34, !67, i1 false, i2 -1}
!69 = !{!34, !70, i1 false, i2 -1}
!70 = !{double 0.000000e+00, double 0x401A9C28F5C28F5C}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = !{!34, !74, i1 false, i2 -1}
!74 = !{double 0.000000e+00, double 6.577500e+00}
!75 = distinct !{!75, !25}
!76 = distinct !{!76, !25}
!77 = distinct !{null}
!78 = !{i1 false, !42, i1 false, i2 1}
!79 = !{i32 0}
!80 = !{i1 false, !44, i1 false, i2 1}
!81 = !{i32 2}
!82 = !{i1 false, !83, i1 false, i2 1}
!83 = !{double 0.000000e+00, double 2.000000e+01}
!84 = !{i32 3}
!85 = !{i1 false, !86, i1 false, i2 1}
!86 = !{double 0.000000e+00, double 1.900000e+01}
!87 = !{!88, !86, i1 false, i2 1}
!88 = !{!"fixp", i32 32, i32 27}
!89 = !{!88, !54, i1 false, i2 1}
!90 = !{!91, !32, i1 false, i2 1}
!91 = !{!"fixp", i32 -32, i32 26}
!92 = !{!31, !32, i1 false, i2 1}
!93 = !{!34, !1, i1 false, i2 1}
!94 = !{i1 false, i1 false, i1 false, i2 1}
!95 = !{i1 false, !48, i1 false, i2 1}
!96 = !{!34, !3, i1 false, i2 1}
!97 = !{i1 false, !98, i1 false, i2 1}
!98 = !{double 3.000000e+00, double 2.300000e+01}
!99 = !{i1 false, !100, i1 false, i2 1}
!100 = !{double 4.000000e+00, double 2.400000e+01}
!101 = !{i1 false, !102, i1 false, i2 1}
!102 = !{double 0.000000e+00, double 4.000000e+02}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
