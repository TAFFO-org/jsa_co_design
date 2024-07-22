; ModuleID = './build/bin/fixed/bicg/11/bicg-standard-1-fixed-11.out.ll.4.taffotmp.ll'
source_filename = "./sources/bicg.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@s_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
@q_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !2
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !4
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !17
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %div, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul = fmul float %x.0, %x.0
  %sub = fsub float %val, %mul
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !20
  %div4 = fdiv float %sub, %mul3
  %add = fadd float %x.0, %div4
  %mul5 = fmul float %add, %add
  %sub6 = fsub float %val, %mul5
  %cmp7 = fcmp oge float %sub6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %sub6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %sub6, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %add, %if.end ]
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
  %A.u1_31fixp = alloca [22 x [20 x i32]], align 4, !taffo.info !30
  %s.u3_29fixp = alloca [20 x i32], align 4, !taffo.info !33, !taffo.target !35
  %q.u3_29fixp = alloca [22 x i32], align 4, !taffo.info !36, !taffo.target !37
  %p.u1_31fixp = alloca [20 x i32], align 4, !taffo.info !38
  %r.u1_31fixp = alloca [22 x i32], align 4, !taffo.info !30
  %arraydecay.u1_31fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !30
  %arraydecay6.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u1_31fixp, i32 0, i32 0, !taffo.info !30
  %arraydecay7.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u1_31fixp, i32 0, i32 0, !taffo.info !38
  %arraydecay8.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u3_29fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay9.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u3_29fixp, i32 0, i32 0, !taffo.info !36, !taffo.target !37
  call void @init_array.2_fixp(i32 20, i32 22, [20 x i32]* %arraydecay.u1_31fixp, i32* %arraydecay6.u1_31fixp, i32* %arraydecay7.u1_31fixp, i32* %arraydecay8.u3_29fixp, i32* %arraydecay9.u3_29fixp), !taffo.info !40, !taffo.constinfo !41
  call void @timer_start(), !taffo.constinfo !42
  %arraydecay10.u1_31fixp = getelementptr inbounds [22 x [20 x i32]], [22 x [20 x i32]]* %A.u1_31fixp, i32 0, i32 0, !taffo.info !30
  %arraydecay11.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u3_29fixp, i32 0, i32 0, !taffo.info !33, !taffo.target !35
  %arraydecay12.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u3_29fixp, i32 0, i32 0, !taffo.info !36, !taffo.target !37
  %arraydecay13.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %p.u1_31fixp, i32 0, i32 0, !taffo.info !38
  %arraydecay14.u1_31fixp = getelementptr inbounds [22 x i32], [22 x i32]* %r.u1_31fixp, i32 0, i32 0, !taffo.info !30
  call void @kernel_bicg.1_fixp(i32 20, i32 22, [20 x i32]* %arraydecay10.u1_31fixp, i32* %arraydecay11.u3_29fixp, i32* %arraydecay12.u3_29fixp, i32* %arraydecay13.u1_31fixp, i32* %arraydecay14.u1_31fixp), !taffo.info !40, !taffo.constinfo !41
  call void @timer_stop(), !taffo.constinfo !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !43
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !45
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds [20 x i32], [20 x i32]* %s.u3_29fixp, i32 0, i32 %i.0, !taffo.info !33, !taffo.target !35
  %u3_29fixp = load i32, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !33, !taffo.target !35
  %0 = uitofp i32 %u3_29fixp to float, !taffo.info !33, !taffo.target !35
  %1 = fdiv float %0, 0x41C0000000000000, !taffo.info !33, !taffo.target !35
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx15, align 4, !taffo.info !47, !taffo.target !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !48, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc22, %for.end
  %i16.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !51
  %cmp18 = icmp slt i32 %i16.0, 22, !taffo.info !45
  br i1 %cmp18, label %for.body19, label %for.end24

for.body19:                                       ; preds = %for.cond17
  %arrayidx20.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %q.u3_29fixp, i32 0, i32 %i16.0, !taffo.info !36, !taffo.target !37
  %u3_29fixp1 = load i32, i32* %arrayidx20.u3_29fixp, align 4, !taffo.info !36, !taffo.target !37
  %2 = uitofp i32 %u3_29fixp1 to float, !taffo.info !36, !taffo.target !37
  %3 = fdiv float %2, 0x41C0000000000000, !taffo.info !36, !taffo.target !37
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i32 0, i32 %i16.0, !taffo.info !2
  store float %3, float* %arrayidx21, align 4, !taffo.info !53, !taffo.target !37
  br label %for.inc22

for.inc22:                                        ; preds = %for.body19
  %inc23 = add nsw i32 %i16.0, 1, !taffo.info !54, !taffo.constinfo !23
  br label %for.cond17, !llvm.loop !56

for.end24:                                        ; preds = %for.cond17
  call void @print_array(i32 noundef 20, i32 noundef 22, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @s_float, i32 0, i32 0), float* noundef getelementptr inbounds ([22 x float], [22 x float]* @q_float, i32 0, i32 0)), !taffo.constinfo !57
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, float* noundef %s, float* noundef %q) #0 !taffo.initweight !58 !taffo.funinfo !59 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !66, !taffo.constinfo !23
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !64
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !68
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !64, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !45
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !64
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !66, !taffo.constinfo !23
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !64
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !68
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !2
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !2
  %conv14 = fpext float %5 to double, !taffo.info !2
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !69
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !64, !taffo.constinfo !23
  br label %for.cond3, !llvm.loop !71

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !27 !taffo.funinfo !28 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.1_fixp(i32 noundef %m, i32 noundef %n, [20 x i32]* noundef %A.u1_31fixp, i32* noundef %s.u3_29fixp, i32* noundef %q.u3_29fixp, i32* noundef %p.u1_31fixp, i32* noundef %r.u1_31fixp) #0 !taffo.initweight !72 !taffo.funinfo !73 !taffo.sourceFunction !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %s.u3_29fixp, i32 %i.0, !taffo.info !33
  store i32 0, i32* %arrayidx.u3_29fixp, align 4, !taffo.info !75, !taffo.constinfo !76
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !64, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ], !taffo.info !45
  %cmp2 = icmp slt i32 %i.1, %n, !taffo.info !64
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %q.u3_29fixp, i32 %i.1, !taffo.info !36
  store i32 0, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !75, !taffo.constinfo !76
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ], !taffo.info !45
  %cmp6 = icmp slt i32 %j.0, %m, !taffo.info !64
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u3_29fixp = getelementptr inbounds i32, i32* %s.u3_29fixp, i32 %j.0, !taffo.info !33
  %u3_29fixp = load i32, i32* %arrayidx8.u3_29fixp, align 4, !taffo.info !78
  %arrayidx9.u1_31fixp = getelementptr inbounds i32, i32* %r.u1_31fixp, i32 %i.1, !taffo.info !30
  %u1_31fixp2 = load i32, i32* %arrayidx9.u1_31fixp, align 4, !taffo.info !30
  %arrayidx10.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !30
  %arrayidx11.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx10.u1_31fixp, i32 0, i32 %j.0, !taffo.info !30
  %u1_31fixp3 = load i32, i32* %arrayidx11.u1_31fixp, align 4, !taffo.info !30
  %0 = lshr i32 %u1_31fixp2, 1, !taffo.info !30
  %1 = lshr i32 %u1_31fixp3, 1, !taffo.info !30
  %2 = call i32 @llvm.smul.fix.i32(i32 %0, i32 %1, i32 30), !taffo.info !80
  %mul.u1_31fixp = shl i32 %2, 1, !taffo.info !83
  %3 = lshr i32 %u3_29fixp, 1, !taffo.info !78
  %4 = lshr i32 %mul.u1_31fixp, 3, !taffo.info !83
  %add.u4_28fixp = add i32 %3, %4, !taffo.info !84
  %arrayidx12.u3_29fixp = getelementptr inbounds i32, i32* %s.u3_29fixp, i32 %j.0, !taffo.info !33
  %5 = shl i32 %add.u4_28fixp, 1, !taffo.info !84
  store i32 %5, i32* %arrayidx12.u3_29fixp, align 4, !taffo.info !47
  %arrayidx13.u3_29fixp = getelementptr inbounds i32, i32* %q.u3_29fixp, i32 %i.1, !taffo.info !36
  %u3_29fixp1 = load i32, i32* %arrayidx13.u3_29fixp, align 4, !taffo.info !36
  %arrayidx14.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !30
  %arrayidx15.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx14.u1_31fixp, i32 0, i32 %j.0, !taffo.info !30
  %u1_31fixp4 = load i32, i32* %arrayidx15.u1_31fixp, align 4, !taffo.info !30
  %arrayidx16.u1_31fixp = getelementptr inbounds i32, i32* %p.u1_31fixp, i32 %j.0, !taffo.info !38
  %u1_31fixp = load i32, i32* %arrayidx16.u1_31fixp, align 4, !taffo.info !38
  %6 = lshr i32 %u1_31fixp4, 1, !taffo.info !30
  %7 = lshr i32 %u1_31fixp, 1, !taffo.info !38
  %8 = ashr i32 %6, 2, !taffo.info !30
  %9 = ashr i32 %7, 2, !taffo.info !38
  %10 = call i32 @llvm.smul.fix.i32(i32 %8, i32 %9, i32 28), !taffo.info !86
  %mul17.u3_29fixp = shl i32 %10, 1, !taffo.info !89
  %add18.u3_29fixp = add i32 %u3_29fixp1, %mul17.u3_29fixp, !taffo.info !90
  %arrayidx19.u3_29fixp = getelementptr inbounds i32, i32* %q.u3_29fixp, i32 %i.1, !taffo.info !36
  store i32 %add18.u3_29fixp, i32* %arrayidx19.u3_29fixp, align 4, !taffo.info !53
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !64, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !92

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !64, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !93

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %m, i32 noundef %n, [20 x i32]* noundef %A.u1_31fixp, i32* noundef %r.u1_31fixp, i32* noundef %p.u1_31fixp, i32* noundef %s.u3_29fixp, i32* noundef %q.u3_29fixp) #0 !taffo.initweight !72 !taffo.funinfo !94 !taffo.sourceFunction !95 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !96, !taffo.initweight !97
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !98, !taffo.initweight !99
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !100, !taffo.initweight !102

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.info !103, !taffo.initweight !99
  %conv.u5_27fixp = shl i32 %rem, 27, !taffo.info !105
  %conv3.u5_27fixp = shl i32 %m, 27, !taffo.info !107
  %0 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !105
  %1 = lshr i32 %conv3.u5_27fixp, 1, !taffo.info !107
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !108
  %div.u1_31fixp = shl i32 %2, 5, !taffo.info !110
  %arrayidx.u1_31fixp = getelementptr inbounds i32, i32* %p.u1_31fixp, i32 %i.0, !taffo.info !110
  store i32 %div.u1_31fixp, i32* %arrayidx.u1_31fixp, align 4, !taffo.info !75
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %s.u3_29fixp, i32 %i.0, !taffo.info !111
  store i32 0, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !75, !taffo.constinfo !76
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !112, !taffo.initweight !99, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.info !96, !taffo.initweight !97
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.info !98, !taffo.initweight !99
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.info !100, !taffo.initweight !102

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.info !114, !taffo.initweight !99
  %conv10.u5_27fixp = shl i32 %rem9, 27, !taffo.info !115
  %conv11.u5_27fixp = shl i32 %n, 27, !taffo.info !116
  %3 = lshr i32 %conv10.u5_27fixp, 1, !taffo.info !115
  %4 = lshr i32 %conv11.u5_27fixp, 1, !taffo.info !116
  %5 = call i32 @llvm.sdiv.fix.i32(i32 %3, i32 %4, i32 26), !taffo.info !117
  %div12.u1_31fixp = shl i32 %5, 5, !taffo.info !119
  %arrayidx13.u1_31fixp = getelementptr inbounds i32, i32* %r.u1_31fixp, i32 %i.1, !taffo.info !120
  store i32 %div12.u1_31fixp, i32* %arrayidx13.u1_31fixp, align 4, !taffo.info !75
  %arrayidx14.u3_29fixp = getelementptr inbounds i32, i32* %q.u3_29fixp, i32 %i.1, !taffo.info !121
  store i32 0, i32* %arrayidx14.u3_29fixp, align 4, !taffo.info !75, !taffo.constinfo !76
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.info !114, !taffo.initweight !97
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.info !98, !taffo.initweight !99
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.info !122, !taffo.initweight !102

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.info !124, !taffo.initweight !99, !taffo.constinfo !23
  %mul = mul nsw i32 %i.1, %add, !taffo.info !125, !taffo.initweight !99
  %rem19 = srem i32 %mul, %n, !taffo.info !114, !taffo.initweight !102
  %conv20.u5_27fixp = shl i32 %rem19, 27, !taffo.info !115
  %conv21.u5_27fixp = shl i32 %n, 27, !taffo.info !116
  %6 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !115
  %7 = lshr i32 %conv21.u5_27fixp, 1, !taffo.info !116
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %6, i32 %7, i32 26), !taffo.info !117
  %div22.u1_31fixp = shl i32 %8, 5, !taffo.info !119
  %arrayidx23.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u1_31fixp, i32 %i.1, !taffo.info !120
  %arrayidx24.u1_31fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u1_31fixp, i32 0, i32 %j.0, !taffo.info !120
  store i32 %div22.u1_31fixp, i32* %arrayidx24.u1_31fixp, align 4, !taffo.info !75
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.info !124, !taffo.initweight !99, !taffo.constinfo !23
  br label %for.cond15, !llvm.loop !127

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.info !112, !taffo.initweight !99, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !128

for.end30:                                        ; preds = %for.cond5
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
!1 = !{double 0.000000e+00, double 0x401B5D173FB7A5F4}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 0x40182E8BC169C23B}
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
!32 = !{double 0.000000e+00, double 0x3FEE8BA1F4B1EE24}
!33 = !{!34, !1, i1 false, i2 -1}
!34 = !{!"fixp", i32 32, i32 29}
!35 = !{!"s"}
!36 = !{!34, !3, i1 false, i2 -1}
!37 = !{!"q"}
!38 = !{!31, !39, i1 false, i2 -1}
!39 = !{double 0.000000e+00, double 0x3FEE666666666666}
!40 = !{i1 false, !32, i1 false, i2 -1}
!41 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!42 = !{i1 false}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 0.000000e+00, double 2.100000e+01}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 1.000000e+00}
!47 = !{i1 false, !1, i1 false, i2 -1}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 1.000000e+00, double 2.100000e+01}
!50 = distinct !{!50, !25}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 2.300000e+01}
!53 = !{i1 false, !3, i1 false, i2 -1}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 2.300000e+01}
!56 = distinct !{!56, !25}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!59 = !{i32 1, !60, i32 1, !62, i32 1, !0, i32 1, !2}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 2.000000e+01, double 2.000000e+01}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 2.200000e+01, double 2.200000e+01}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 1.000000e+00, double 1.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 0.000000e+00}
!68 = !{i1 false, i1 false, i1 false}
!69 = !{i1 false, i1 false, i1 false, i1 false}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!73 = !{i32 1, !60, i32 1, !62, i32 1, !30, i32 1, !33, i32 1, !36, i32 1, !38, i32 1, !30}
!74 = distinct !{null}
!75 = !{i1 false, i1 false, i1 false, i2 1}
!76 = !{!66, i1 false}
!77 = distinct !{!77, !25}
!78 = !{!79, !1, i1 false, i2 -1}
!79 = !{!"fixp", i32 32, i32 28}
!80 = !{!81, !82, i1 false, i2 -1}
!81 = !{!"fixp", i32 -32, i32 30}
!82 = !{double 0.000000e+00, double 0x3FED2830F4FF15D6}
!83 = !{!31, !82, i1 false, i2 -1}
!84 = !{!79, !85, i1 false, i2 -1}
!85 = !{double 0.000000e+00, double 0x401F021D5E5788AF}
!86 = !{!87, !88, i1 false, i2 -1}
!87 = !{!"fixp", i32 -32, i32 28}
!88 = !{double 0.000000e+00, double 0x3FED04A6A875D56F}
!89 = !{!34, !88, i1 false, i2 -1}
!90 = !{!34, !91, i1 false, i2 -1}
!91 = !{double 0.000000e+00, double 0x401BCF2096787CE9}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, !25}
!94 = !{i32 1, !60, i32 1, !62, i32 1, !30, i32 1, !30, i32 1, !38, i32 1, !33, i32 1, !36}
!95 = distinct !{null}
!96 = !{i1 false, !52, i1 false, i2 1}
!97 = !{i32 0}
!98 = !{i1 false, !46, i1 false, i2 1}
!99 = !{i32 2}
!100 = !{i1 false, !101, i1 false, i2 1}
!101 = !{double 0.000000e+00, double 2.200000e+01}
!102 = !{i32 3}
!103 = !{i1 false, !104, i1 false, i2 1}
!104 = !{double 0.000000e+00, double 1.900000e+01}
!105 = !{!106, !104, i1 false, i2 1}
!106 = !{!"fixp", i32 32, i32 27}
!107 = !{!106, !61, i1 false, i2 1}
!108 = !{!109, !39, i1 false, i2 1}
!109 = !{!"fixp", i32 -32, i32 26}
!110 = !{!31, !39, i1 false, i2 1}
!111 = !{!34, !1, i1 false, i2 1}
!112 = !{i1 false, !55, i1 false, i2 1}
!113 = distinct !{!113, !25}
!114 = !{i1 false, !44, i1 false, i2 1}
!115 = !{!106, !44, i1 false, i2 1}
!116 = !{!106, !63, i1 false, i2 1}
!117 = !{!109, !118, i1 false, i2 1}
!118 = !{double 0.000000e+00, double 0x3FEE8BA2E8BA2E8C}
!119 = !{!31, !118, i1 false, i2 1}
!120 = !{!31, !32, i1 false, i2 1}
!121 = !{!34, !3, i1 false, i2 1}
!122 = !{i1 false, !123, i1 false, i2 1}
!123 = !{double 0.000000e+00, double 2.000000e+01}
!124 = !{i1 false, !49, i1 false, i2 1}
!125 = !{i1 false, !126, i1 false, i2 1}
!126 = !{double 0.000000e+00, double 4.620000e+02}
!127 = distinct !{!127, !25}
!128 = distinct !{!128, !25}
