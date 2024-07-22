; ModuleID = './build/bin/fixed/3mm/24/3mm-standard-1-fixed-24.out.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -1
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
  %lampsim6 = and i32 %lampsim5, -1
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -1
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -1
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -1
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -1
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -1
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -1
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.start !27 {
entry:
  %E.u1_31fixp = alloca [6 x [8 x i32]], align 4, !taffo.info !28
  %A.u1_31fixp = alloca [6 x [10 x i32]], align 4, !taffo.info !31
  %B.u1_31fixp = alloca [10 x [8 x i32]], align 4, !taffo.info !33
  %F.u1_31fixp = alloca [8 x [12 x i32]], align 4, !taffo.info !35
  %C.u1_31fixp = alloca [8 x [14 x i32]], align 4, !taffo.info !37
  %D.u1_31fixp = alloca [14 x [12 x i32]], align 4, !taffo.info !39
  %G.u1_31fixp = alloca [6 x [12 x i32]], align 4, !taffo.info !41, !taffo.target !42
  %arraydecay.u1_31fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !31
  %arraydecay8.u1_31fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay9.u1_31fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u1_31fixp, i32 0, i32 0, !taffo.info !37
  %arraydecay10.u1_31fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u1_31fixp, i32 0, i32 0, !taffo.info !39
  %arraydecay11.u1_31fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u1_31fixp, i32 0, i32 0, !taffo.info !28
  %arraydecay12.u1_31fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u1_31fixp, i32 0, i32 0, !taffo.info !35
  %arraydecay13.u1_31fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u1_31fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !42
  call void @init_array.2_fixp(i32 6, i32 8, i32 10, i32 12, i32 14, [10 x i32]* %arraydecay.u1_31fixp, [8 x i32]* %arraydecay8.u1_31fixp, [14 x i32]* %arraydecay9.u1_31fixp, [12 x i32]* %arraydecay10.u1_31fixp, [8 x i32]* %arraydecay11.u1_31fixp, [12 x i32]* %arraydecay12.u1_31fixp, [12 x i32]* %arraydecay13.u1_31fixp), !taffo.info !43, !taffo.constinfo !44
  call void @timer_start(), !taffo.constinfo !45
  %arraydecay14.u1_31fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u1_31fixp, i32 0, i32 0, !taffo.info !28
  %arraydecay15.u1_31fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !31
  %arraydecay16.u1_31fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u1_31fixp, i32 0, i32 0, !taffo.info !33
  %arraydecay17.u1_31fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u1_31fixp, i32 0, i32 0, !taffo.info !35
  %arraydecay18.u1_31fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u1_31fixp, i32 0, i32 0, !taffo.info !37
  %arraydecay19.u1_31fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u1_31fixp, i32 0, i32 0, !taffo.info !39
  %arraydecay20.u1_31fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u1_31fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !42
  call void @kernel_3mm.1_fixp(i32 6, i32 8, i32 10, i32 12, i32 14, [8 x i32]* %arraydecay14.u1_31fixp, [10 x i32]* %arraydecay15.u1_31fixp, [8 x i32]* %arraydecay16.u1_31fixp, [12 x i32]* %arraydecay17.u1_31fixp, [14 x i32]* %arraydecay18.u1_31fixp, [12 x i32]* %arraydecay19.u1_31fixp, [12 x i32]* %arraydecay20.u1_31fixp), !taffo.info !43, !taffo.constinfo !44
  call void @timer_stop(), !taffo.constinfo !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.info !46
  %cmp = icmp slt i32 %i.0, 6, !taffo.info !48
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !50
  %cmp22 = icmp slt i32 %j.0, 12, !taffo.info !48
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %arrayidx.u1_31fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u1_31fixp, i32 0, i32 %i.0, !taffo.info !41, !taffo.target !42
  %arrayidx24.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u1_31fixp, i32 0, i32 %j.0, !taffo.info !41, !taffo.target !42
  %u1_31fixp = load i32, i32* %arrayidx24.u1_31fixp, align 4, !taffo.info !41, !taffo.target !42
  %0 = uitofp i32 %u1_31fixp to float, !taffo.info !41, !taffo.target !42
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -1
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x41E0000000000000, !taffo.info !41, !taffo.target !42
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -1
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx25 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx25, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx26, align 4, !taffo.info !52, !taffo.target !42
  br label %for.inc

for.inc:                                          ; preds = %for.body23
  %inc = add nsw i32 %j.0, 1, !taffo.info !53, !taffo.constinfo !21
  br label %for.cond21, !llvm.loop !55

for.end:                                          ; preds = %for.cond21
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %inc28 = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !58

for.end29:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 6, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0)), !taffo.constinfo !59
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !60 !taffo.funinfo !61 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !48
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !48
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !66
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !68
  %add = add nsw i32 %mul, %j.0, !taffo.info !68
  %rem = srem i32 %add, 20, !taffo.info !68, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !66
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !70
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -536870912
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !59
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !71

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !72

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x i32]* noundef %E.u1_31fixp, [10 x i32]* noundef %A.u1_31fixp, [8 x i32]* noundef %B.u1_31fixp, [12 x i32]* noundef %F.u1_31fixp, [14 x i32]* noundef %C.u1_31fixp, [12 x i32]* noundef %D.u1_31fixp, [12 x i32]* noundef %G.u1_31fixp) #0 !taffo.initweight !73 !taffo.funinfo !74 !taffo.sourceFunction !79 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !48
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !48
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !66
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u1_31fixp, i32 %i.0, !taffo.info !28
  %arrayidx4.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx.u1_31fixp, i32 0, i32 %j.0, !taffo.info !28
  store i32 0, i32* %arrayidx4.u1_31fixp, align 4, !taffo.info !80, !taffo.constinfo !81
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !48
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !66
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !31
  %arrayidx9.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8.u1_31fixp, i32 0, i32 %k.0, !taffo.info !31
  %u1_31fixp2 = load i32, i32* %arrayidx9.u1_31fixp, align 4, !taffo.info !31
  %arrayidx10.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %B.u1_31fixp, i32 %k.0, !taffo.info !33
  %arrayidx11.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx10.u1_31fixp, i32 0, i32 %j.0, !taffo.info !33
  %u1_31fixp3 = load i32, i32* %arrayidx11.u1_31fixp, align 4, !taffo.info !33
  %0 = lshr i32 %u1_31fixp2, 1, !taffo.info !31
  %1 = lshr i32 %u1_31fixp3, 1, !taffo.info !33
  %2 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %1, i32 30), !taffo.info !82
  %mul.u1_31fixp = shl i32 %2, 1, !taffo.info !85
  %arrayidx12.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u1_31fixp, i32 %i.0, !taffo.info !28
  %arrayidx13.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx12.u1_31fixp, i32 0, i32 %j.0, !taffo.info !28
  %u1_31fixp = load i32, i32* %arrayidx13.u1_31fixp, align 4, !taffo.info !28
  %add.u1_31fixp = add i32 %u1_31fixp, %mul.u1_31fixp, !taffo.info !86
  store i32 %add.u1_31fixp, i32* %arrayidx13.u1_31fixp, align 4, !taffo.info !43
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !88

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !89

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !90

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ], !taffo.info !48
  %cmp21 = icmp slt i32 %i.1, %nj, !taffo.info !66
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ], !taffo.info !48
  %cmp24 = icmp slt i32 %j.1, %nl, !taffo.info !66
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u1_31fixp, i32 %i.1, !taffo.info !35
  %arrayidx27.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx26.u1_31fixp, i32 0, i32 %j.1, !taffo.info !35
  store i32 0, i32* %arrayidx27.u1_31fixp, align 4, !taffo.info !80, !taffo.constinfo !81
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ], !taffo.info !48
  %cmp29 = icmp slt i32 %k.1, %nm, !taffo.info !66
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u1_31fixp, i32 %i.1, !taffo.info !37
  %arrayidx32.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx31.u1_31fixp, i32 0, i32 %k.1, !taffo.info !37
  %u1_31fixp6 = load i32, i32* %arrayidx32.u1_31fixp, align 4, !taffo.info !37
  %arrayidx33.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %D.u1_31fixp, i32 %k.1, !taffo.info !39
  %arrayidx34.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx33.u1_31fixp, i32 0, i32 %j.1, !taffo.info !39
  %u1_31fixp7 = load i32, i32* %arrayidx34.u1_31fixp, align 4, !taffo.info !39
  %3 = lshr i32 %u1_31fixp6, 1, !taffo.info !37
  %4 = lshr i32 %u1_31fixp7, 1, !taffo.info !39
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 30), !taffo.info !91
  %mul35.u1_31fixp = shl i32 %5, 1, !taffo.info !93
  %arrayidx36.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u1_31fixp, i32 %i.1, !taffo.info !35
  %arrayidx37.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx36.u1_31fixp, i32 0, i32 %j.1, !taffo.info !35
  %u1_31fixp4 = load i32, i32* %arrayidx37.u1_31fixp, align 4, !taffo.info !35
  %add38.u1_31fixp = add i32 %u1_31fixp4, %mul35.u1_31fixp, !taffo.info !94
  store i32 %add38.u1_31fixp, i32* %arrayidx37.u1_31fixp, align 4, !taffo.info !96
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !97

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !98

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !99

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ], !taffo.info !48
  %cmp49 = icmp slt i32 %i.2, %ni, !taffo.info !66
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ], !taffo.info !48
  %cmp52 = icmp slt i32 %j.2, %nl, !taffo.info !66
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %G.u1_31fixp, i32 %i.2, !taffo.info !41
  %arrayidx55.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx54.u1_31fixp, i32 0, i32 %j.2, !taffo.info !41
  store i32 0, i32* %arrayidx55.u1_31fixp, align 4, !taffo.info !80, !taffo.constinfo !81
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ], !taffo.info !48
  %cmp57 = icmp slt i32 %k.2, %nj, !taffo.info !66
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u1_31fixp, i32 %i.2, !taffo.info !28
  %arrayidx60.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx59.u1_31fixp, i32 0, i32 %k.2, !taffo.info !28
  %u1_31fixp1 = load i32, i32* %arrayidx60.u1_31fixp, align 4, !taffo.info !28
  %arrayidx61.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u1_31fixp, i32 %k.2, !taffo.info !35
  %arrayidx62.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx61.u1_31fixp, i32 0, i32 %j.2, !taffo.info !35
  %u1_31fixp5 = load i32, i32* %arrayidx62.u1_31fixp, align 4, !taffo.info !35
  %6 = lshr i32 %u1_31fixp1, 1, !taffo.info !28
  %7 = lshr i32 %u1_31fixp5, 1, !taffo.info !35
  %8 = call i32 @llvm.smul.fix.i32(i32 %6, i32 %7, i32 30), !taffo.info !100
  %mul63.u1_31fixp = shl i32 %8, 1, !taffo.info !102
  %arrayidx64.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %G.u1_31fixp, i32 %i.2, !taffo.info !41
  %arrayidx65.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx64.u1_31fixp, i32 0, i32 %j.2, !taffo.info !41
  %u1_31fixp8 = load i32, i32* %arrayidx65.u1_31fixp, align 4, !taffo.info !41
  %add66.u1_31fixp = add i32 %u1_31fixp8, %mul63.u1_31fixp, !taffo.info !103
  store i32 %add66.u1_31fixp, i32* %arrayidx65.u1_31fixp, align 4, !taffo.info !52
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !105

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond51, !llvm.loop !106

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !107

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x i32]* noundef %A.u1_31fixp, [8 x i32]* noundef %B.u1_31fixp, [14 x i32]* noundef %C.u1_31fixp, [12 x i32]* noundef %D.u1_31fixp, [8 x i32]* noundef %E.u1_31fixp, [12 x i32]* noundef %F.u1_31fixp, [12 x i32]* noundef %G.u1_31fixp) #0 !taffo.initweight !73 !taffo.funinfo !108 !taffo.sourceFunction !109 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !110, !taffo.initweight !112
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp, label %for.body, label %for.end11, !taffo.info !115, !taffo.initweight !117

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !110, !taffo.initweight !112
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !115, !taffo.initweight !117

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !118, !taffo.initweight !114
  %add = add nsw i32 %mul, 1, !taffo.info !120, !taffo.initweight !117, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !122, !taffo.initweight !124
  %conv.u3_29fixp = shl i32 %rem, 29, !taffo.info !125
  %mul6 = mul nsw i32 5, %ni, !taffo.info !127, !taffo.constinfo !21
  %conv7.u5_27fixp = shl i32 %mul6, 27, !taffo.info !129, !taffo.constinfo !21
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !125
  %1 = lshr i32 %conv7.u5_27fixp, 1, !taffo.info !129, !taffo.constinfo !21
  %2 = ashr i32 %0, 2, !taffo.info !125
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !131
  %div.u3_29fixp = shl i32 %3, 3, !taffo.info !134
  %arrayidx.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u1_31fixp, i32 %i.0, !taffo.info !135
  %arrayidx8.u1_31fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u1_31fixp, i32 0, i32 %j.0, !taffo.info !135
  %4 = shl i32 %div.u3_29fixp, 2, !taffo.info !134
  store i32 %4, i32* %arrayidx8.u1_31fixp, align 4, !taffo.info !80
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !138

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !139

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.info !110, !taffo.initweight !112
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.info !115, !taffo.initweight !117

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.info !110, !taffo.initweight !112
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.info !115, !taffo.initweight !117

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.info !140, !taffo.initweight !114
  %add22 = add nsw i32 %mul21, 2, !taffo.info !142, !taffo.initweight !117, !taffo.constinfo !21
  %rem23 = srem i32 %add22, %nj, !taffo.info !144, !taffo.initweight !124
  %conv24.u3_29fixp = shl i32 %rem23, 29, !taffo.info !145
  %mul25 = mul nsw i32 5, %nj, !taffo.info !146, !taffo.constinfo !21
  %conv26.u6_26fixp = shl i32 %mul25, 26, !taffo.info !148, !taffo.constinfo !21
  %5 = lshr i32 %conv24.u3_29fixp, 1, !taffo.info !145
  %6 = lshr i32 %conv26.u6_26fixp, 1, !taffo.info !148, !taffo.constinfo !21
  %7 = ashr i32 %5, 3, !taffo.info !145
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 25), !taffo.info !150
  %div27.u3_29fixp = shl i32 %8, 4, !taffo.info !152
  %arrayidx28.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %B.u1_31fixp, i32 %i.1, !taffo.info !153
  %arrayidx29.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx28.u1_31fixp, i32 0, i32 %j.1, !taffo.info !153
  %9 = shl i32 %div27.u3_29fixp, 2, !taffo.info !152
  store i32 %9, i32* %arrayidx29.u1_31fixp, align 4, !taffo.info !80
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !154

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !155

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.info !110, !taffo.initweight !112
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.info !115, !taffo.initweight !117

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.info !110, !taffo.initweight !112
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.info !115, !taffo.initweight !117

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.info !156, !taffo.initweight !114, !taffo.constinfo !21
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.info !158, !taffo.initweight !114
  %rem46 = srem i32 %mul45, %nl, !taffo.info !160, !taffo.initweight !117
  %conv47.u4_28fixp = shl i32 %rem46, 28, !taffo.info !162
  %mul48 = mul nsw i32 5, %nl, !taffo.info !164, !taffo.constinfo !21
  %conv49.u6_26fixp = shl i32 %mul48, 26, !taffo.info !166, !taffo.constinfo !21
  %10 = lshr i32 %conv47.u4_28fixp, 1, !taffo.info !162
  %11 = lshr i32 %conv49.u6_26fixp, 1, !taffo.info !166, !taffo.constinfo !21
  %12 = ashr i32 %10, 2, !taffo.info !162
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 25), !taffo.info !167
  %div50.u1_31fixp = shl i32 %13, 6, !taffo.info !169
  %arrayidx51.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u1_31fixp, i32 %i.2, !taffo.info !170
  %arrayidx52.u1_31fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx51.u1_31fixp, i32 0, i32 %j.2, !taffo.info !170
  store i32 %div50.u1_31fixp, i32* %arrayidx52.u1_31fixp, align 4, !taffo.info !80
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !171

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond36, !llvm.loop !172

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.info !110, !taffo.initweight !112
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.info !115, !taffo.initweight !117

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.info !110, !taffo.initweight !112
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.info !115, !taffo.initweight !117

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.info !173, !taffo.initweight !114, !taffo.constinfo !21
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.info !175, !taffo.initweight !114
  %add69 = add nsw i32 %mul68, 2, !taffo.info !177, !taffo.initweight !117, !taffo.constinfo !21
  %rem70 = srem i32 %add69, %nk, !taffo.info !179, !taffo.initweight !124
  %conv71.u4_28fixp = shl i32 %rem70, 28, !taffo.info !181
  %mul72 = mul nsw i32 5, %nk, !taffo.info !182, !taffo.constinfo !21
  %conv73.u6_26fixp = shl i32 %mul72, 26, !taffo.info !184, !taffo.constinfo !21
  %14 = lshr i32 %conv71.u4_28fixp, 1, !taffo.info !181
  %15 = lshr i32 %conv73.u6_26fixp, 1, !taffo.info !184, !taffo.constinfo !21
  %16 = ashr i32 %14, 2, !taffo.info !181
  %17 = call i32 @llvm.sdiv.fix.i32(i32 %16, i32 %15, i32 25), !taffo.info !185
  %div74.u1_31fixp = shl i32 %17, 6, !taffo.info !186
  %arrayidx75.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %D.u1_31fixp, i32 %i.3, !taffo.info !186
  %arrayidx76.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx75.u1_31fixp, i32 0, i32 %j.3, !taffo.info !186
  store i32 %div74.u1_31fixp, i32* %arrayidx76.u1_31fixp, align 4, !taffo.info !80
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond63, !llvm.loop !187

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond59, !llvm.loop !188

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.info !110, !taffo.initweight !112
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.info !115, !taffo.initweight !117

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.info !110, !taffo.initweight !112
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.info !115, !taffo.initweight !117

for.body90:                                       ; preds = %for.cond87
  %arrayidx91.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u1_31fixp, i32 %i.4, !taffo.info !189
  %arrayidx92.u1_31fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx91.u1_31fixp, i32 0, i32 %j.4, !taffo.info !189
  store i32 0, i32* %arrayidx92.u1_31fixp, align 4, !taffo.info !80, !taffo.constinfo !81
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond87, !llvm.loop !190

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond83, !llvm.loop !191

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.info !110, !taffo.initweight !112
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.info !115, !taffo.initweight !117

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.info !110, !taffo.initweight !112
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.info !115, !taffo.initweight !117

for.body106:                                      ; preds = %for.cond103
  %arrayidx107.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u1_31fixp, i32 %i.5, !taffo.info !192
  %arrayidx108.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx107.u1_31fixp, i32 0, i32 %j.5, !taffo.info !192
  store i32 0, i32* %arrayidx108.u1_31fixp, align 4, !taffo.info !80, !taffo.constinfo !81
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond103, !llvm.loop !193

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond99, !llvm.loop !194

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.info !110, !taffo.initweight !112
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.info !115, !taffo.initweight !117

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.info !110, !taffo.initweight !112
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.info !115, !taffo.initweight !117

for.body122:                                      ; preds = %for.cond119
  %arrayidx123.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %G.u1_31fixp, i32 %i.6, !taffo.info !195
  %arrayidx124.u1_31fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx123.u1_31fixp, i32 0, i32 %j.6, !taffo.info !195
  store i32 0, i32* %arrayidx124.u1_31fixp, align 4, !taffo.info !80, !taffo.constinfo !81
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond119, !llvm.loop !196

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond115, !llvm.loop !197

for.end130:                                       ; preds = %for.cond115
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

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 5.428300e-02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"NumRegisterParameters", i32 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+01, double 1.000000e+01}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 2.000000e+00, double 2.000000e+00}
!21 = !{i1 false, i1 false}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{}
!25 = !{i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 true}
!28 = !{!29, !30, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 31}
!30 = !{double 0.000000e+00, double 1.083330e-01}
!31 = !{!29, !32, i1 false, i2 -1}
!32 = !{double 0.000000e+00, double 1.666670e-01}
!33 = !{!29, !34, i1 false, i2 -1}
!34 = !{double 0.000000e+00, double 1.750000e-01}
!35 = !{!29, !36, i1 false, i2 -1}
!36 = !{double 0.000000e+00, double 1.280000e-01}
!37 = !{!29, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 1.833330e-01}
!39 = !{!29, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 1.800000e-01}
!41 = !{!29, !1, i1 false, i2 -1}
!42 = !{!"G"}
!43 = !{i1 false, !30, i1 false, i2 -1}
!44 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!45 = !{i1 false}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 7.000000e+00}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 1.000000e+00}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 9.100000e+01}
!52 = !{i1 false, !1, i1 false, i2 -1}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 1.000000e+00, double 9.100000e+01}
!55 = distinct !{!55, !23}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 7.000000e+00}
!58 = distinct !{!58, !23}
!59 = !{i1 false, i1 false, i1 false, i1 false}
!60 = !{i32 -1, i32 -1, i32 -1}
!61 = !{i32 1, !62, i32 1, !64, i32 1, !0}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 6.000000e+00, double 6.000000e+00}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 1.200000e+01, double 1.200000e+01}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 1.000000e+00}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 0.000000e+00}
!70 = !{i1 false, i1 false, i1 false}
!71 = distinct !{!71, !23}
!72 = distinct !{!72, !23}
!73 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!74 = !{i32 1, !62, i32 1, !75, i32 1, !16, i32 1, !64, i32 1, !77, i32 1, !28, i32 1, !31, i32 1, !33, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 8.000000e+00, double 8.000000e+00}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.400000e+01, double 1.400000e+01}
!79 = distinct !{null}
!80 = !{i1 false, i1 false, i1 false, i2 1}
!81 = !{!68, i1 false}
!82 = !{!83, !84, i1 false, i2 -1}
!83 = !{!"fixp", i32 -32, i32 30}
!84 = !{double 0.000000e+00, double 0x3F9DDDE1C806946F}
!85 = !{!29, !84, i1 false, i2 -1}
!86 = !{!29, !87, i1 false, i2 -1}
!87 = !{double 0.000000e+00, double 0x3FC199974B0AC04D}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !23}
!91 = !{!83, !92, i1 false, i2 -1}
!92 = !{double 0.000000e+00, double 0x3FA0E55E3E23D217}
!93 = !{!29, !92, i1 false, i2 -1}
!94 = !{!29, !95, i1 false, i2 -1}
!95 = !{double 0.000000e+00, double 0x3FC49BA5627A9E82}
!96 = !{i1 false, !36, i1 false, i2 -1}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = distinct !{!99, !23}
!100 = !{!83, !101, i1 false, i2 -1}
!101 = !{double 0.000000e+00, double 0x3F8C661AC4AFFB63}
!102 = !{!29, !101, i1 false, i2 -1}
!103 = !{!29, !104, i1 false, i2 -1}
!104 = !{double 0.000000e+00, double 0x3FB17240F6508FF6}
!105 = distinct !{!105, !23}
!106 = distinct !{!106, !23}
!107 = distinct !{!107, !23}
!108 = !{i32 1, !62, i32 1, !75, i32 1, !16, i32 1, !64, i32 1, !77, i32 1, !31, i32 1, !33, i32 1, !37, i32 1, !39, i32 1, !28, i32 1, !35, i32 1, !41}
!109 = distinct !{null}
!110 = !{i1 false, !111, i1 false, i2 1}
!111 = !{double 0.000000e+00, double 1.500000e+01}
!112 = !{i32 0}
!113 = !{i1 false, !49, i1 false, i2 1}
!114 = !{i32 2}
!115 = !{i1 false, !116, i1 false, i2 1}
!116 = !{double 0.000000e+00, double 1.400000e+01}
!117 = !{i32 3}
!118 = !{i1 false, !119, i1 false, i2 1}
!119 = !{double 0.000000e+00, double 1.960000e+02}
!120 = !{i1 false, !121, i1 false, i2 1}
!121 = !{double 1.000000e+00, double 1.970000e+02}
!122 = !{i1 false, !123, i1 false, i2 1}
!123 = !{double 0.000000e+00, double 5.000000e+00}
!124 = !{i32 4}
!125 = !{!126, !123, i1 false, i2 1}
!126 = !{!"fixp", i32 32, i32 29}
!127 = !{i1 false, !128, i1 false, i2 0}
!128 = !{double 3.000000e+01, double 3.000000e+01}
!129 = !{!130, !128, i1 false, i2 1}
!130 = !{!"fixp", i32 32, i32 27}
!131 = !{!132, !133, i1 false, i2 1}
!132 = !{!"fixp", i32 -32, i32 26}
!133 = !{double 0.000000e+00, double 0x3FC5555555555555}
!134 = !{!126, !133, i1 false, i2 1}
!135 = !{!29, !32, i1 false, i2 1}
!136 = !{i1 false, !137, i1 false, i2 1}
!137 = !{double 1.000000e+00, double 1.500000e+01}
!138 = distinct !{!138, !23}
!139 = distinct !{!139, !23}
!140 = !{i1 false, !141, i1 false, i2 1}
!141 = !{double 0.000000e+00, double 2.100000e+02}
!142 = !{i1 false, !143, i1 false, i2 1}
!143 = !{double 2.000000e+00, double 2.120000e+02}
!144 = !{i1 false, !47, i1 false, i2 1}
!145 = !{!126, !47, i1 false, i2 1}
!146 = !{i1 false, !147, i1 false, i2 0}
!147 = !{double 4.000000e+01, double 4.000000e+01}
!148 = !{!149, !147, i1 false, i2 1}
!149 = !{!"fixp", i32 32, i32 26}
!150 = !{!151, !34, i1 false, i2 1}
!151 = !{!"fixp", i32 -32, i32 25}
!152 = !{!126, !34, i1 false, i2 1}
!153 = !{!29, !34, i1 false, i2 1}
!154 = distinct !{!154, !23}
!155 = distinct !{!155, !23}
!156 = !{i1 false, !157, i1 false, i2 1}
!157 = !{double 3.000000e+00, double 1.700000e+01}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 0.000000e+00, double 2.380000e+02}
!160 = !{i1 false, !161, i1 false, i2 1}
!161 = !{double 0.000000e+00, double 1.100000e+01}
!162 = !{!163, !161, i1 false, i2 1}
!163 = !{!"fixp", i32 32, i32 28}
!164 = !{i1 false, !165, i1 false, i2 0}
!165 = !{double 6.000000e+01, double 6.000000e+01}
!166 = !{!149, !165, i1 false, i2 1}
!167 = !{!151, !168, i1 false, i2 1}
!168 = !{double 0.000000e+00, double 0x3FC7777777777777}
!169 = !{!29, !168, i1 false, i2 1}
!170 = !{!29, !38, i1 false, i2 1}
!171 = distinct !{!171, !23}
!172 = distinct !{!172, !23}
!173 = !{i1 false, !174, i1 false, i2 1}
!174 = !{double 2.000000e+00, double 1.600000e+01}
!175 = !{i1 false, !176, i1 false, i2 1}
!176 = !{double 0.000000e+00, double 2.240000e+02}
!177 = !{i1 false, !178, i1 false, i2 1}
!178 = !{double 2.000000e+00, double 2.260000e+02}
!179 = !{i1 false, !180, i1 false, i2 1}
!180 = !{double 0.000000e+00, double 9.000000e+00}
!181 = !{!163, !180, i1 false, i2 1}
!182 = !{i1 false, !183, i1 false, i2 0}
!183 = !{double 5.000000e+01, double 5.000000e+01}
!184 = !{!149, !183, i1 false, i2 1}
!185 = !{!151, !40, i1 false, i2 1}
!186 = !{!29, !40, i1 false, i2 1}
!187 = distinct !{!187, !23}
!188 = distinct !{!188, !23}
!189 = !{!29, !30, i1 false, i2 1}
!190 = distinct !{!190, !23}
!191 = distinct !{!191, !23}
!192 = !{!29, !36, i1 false, i2 1}
!193 = distinct !{!193, !23}
!194 = distinct !{!194, !23}
!195 = !{!29, !1, i1 false, i2 1}
!196 = distinct !{!196, !23}
!197 = distinct !{!197, !23}
