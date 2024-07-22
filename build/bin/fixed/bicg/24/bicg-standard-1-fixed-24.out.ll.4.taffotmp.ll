; ModuleID = './build/bin/fixed/bicg/24/bicg-standard-1-fixed-24.out.ll.3.taffotmp.ll'
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
  %A = alloca [22 x [20 x float]], align 4, !taffo.info !30, !taffo.initweight !33
  %s = alloca [20 x float], align 4, !taffo.info !34, !taffo.initweight !33, !taffo.target !36
  %q = alloca [22 x float], align 4, !taffo.info !37, !taffo.initweight !33, !taffo.target !38
  %p = alloca [20 x float], align 4, !taffo.info !39, !taffo.initweight !33
  %r = alloca [22 x float], align 4, !taffo.info !30, !taffo.initweight !33
  %A1 = bitcast [22 x [20 x float]]* %A to i8*, !taffo.info !41, !taffo.initweight !42
  %s2 = bitcast [20 x float]* %s to i8*, !taffo.info !43, !taffo.initweight !42, !taffo.target !36
  %q3 = bitcast [22 x float]* %q to i8*, !taffo.info !43, !taffo.initweight !42, !taffo.target !38
  %p4 = bitcast [20 x float]* %p to i8*, !taffo.info !41, !taffo.initweight !42
  %r5 = bitcast [22 x float]* %r to i8*, !taffo.info !41, !taffo.initweight !42
  %arraydecay = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !30, !taffo.initweight !42
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.info !30, !taffo.initweight !42
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.info !39, !taffo.initweight !42
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.info !34, !taffo.initweight !42, !taffo.target !36
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.info !37, !taffo.initweight !42, !taffo.target !38
  call void @init_array.2(i32 noundef 20, i32 noundef 22, [20 x float]* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.info !44, !taffo.initweight !45, !taffo.constinfo !46, !taffo.originalCall !47
  call void @timer_start(), !taffo.constinfo !48
  %arraydecay10 = getelementptr inbounds [22 x [20 x float]], [22 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !30, !taffo.initweight !42
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 0, !taffo.info !34, !taffo.initweight !42, !taffo.target !36
  %arraydecay12 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 0, !taffo.info !37, !taffo.initweight !42, !taffo.target !38
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0, !taffo.info !39, !taffo.initweight !42
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %r, i32 0, i32 0, !taffo.info !30, !taffo.initweight !42
  call void @kernel_bicg.1(i32 noundef 20, i32 noundef 22, [20 x float]* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14), !taffo.info !44, !taffo.initweight !45, !taffo.constinfo !46, !taffo.originalCall !49
  call void @timer_stop(), !taffo.constinfo !48
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !50
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !52
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %s, i32 0, i32 %i.0, !taffo.info !34, !taffo.initweight !42, !taffo.target !36
  %0 = load float, float* %arrayidx, align 4, !taffo.info !34, !taffo.initweight !45, !taffo.target !36
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @s_float, i32 0, i32 %i.0, !taffo.info !0
  store float %0, float* %arrayidx15, align 4, !taffo.info !54, !taffo.initweight !55, !taffo.target !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc22, %for.end
  %i16.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !59
  %cmp18 = icmp slt i32 %i16.0, 22, !taffo.info !52
  br i1 %cmp18, label %for.body19, label %for.end24

for.body19:                                       ; preds = %for.cond17
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %q, i32 0, i32 %i16.0, !taffo.info !37, !taffo.initweight !42, !taffo.target !38
  %1 = load float, float* %arrayidx20, align 4, !taffo.info !37, !taffo.initweight !45, !taffo.target !38
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* @q_float, i32 0, i32 %i16.0, !taffo.info !2
  store float %1, float* %arrayidx21, align 4, !taffo.info !61, !taffo.initweight !55, !taffo.target !38
  br label %for.inc22

for.inc22:                                        ; preds = %for.body19
  %inc23 = add nsw i32 %i16.0, 1, !taffo.info !62, !taffo.constinfo !23
  br label %for.cond17, !llvm.loop !64

for.end24:                                        ; preds = %for.cond17
  call void @print_array(i32 noundef 20, i32 noundef 22, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @s_float, i32 0, i32 0), float* noundef getelementptr inbounds ([22 x float], [22 x float]* @q_float, i32 0, i32 0)), !taffo.constinfo !65
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, float* noundef %s, float* noundef %q) #0 !taffo.initweight !66 !taffo.funinfo !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !74, !taffo.constinfo !23
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !72
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !76
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !77
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !52
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !72
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !74, !taffo.constinfo !23
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !72
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !76
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !2
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !2
  %conv14 = fpext float %5 to double, !taffo.info !2
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !77
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !72, !taffo.constinfo !23
  br label %for.cond3, !llvm.loop !79

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !27 !taffo.funinfo !28 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_bicg.1(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %s, float* noundef %q, float* noundef %p, float* noundef %r) #0 !taffo.initweight !80 !taffo.funinfo !81 !taffo.sourceFunction !49 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !34, !taffo.initweight !82
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.info !83, !taffo.initweight !82, !taffo.constinfo !84
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ], !taffo.info !52
  %cmp2 = icmp slt i32 %i.1, %n, !taffo.info !72
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !37, !taffo.initweight !82
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !83, !taffo.initweight !82, !taffo.constinfo !84
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc21, %for.inc20 ], !taffo.info !52
  %cmp6 = icmp slt i32 %j.0, %m, !taffo.info !72
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %s, i32 %j.0, !taffo.info !34, !taffo.initweight !82
  %0 = load float, float* %arrayidx8, align 4, !taffo.info !86, !taffo.initweight !88
  %arrayidx9 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.info !30, !taffo.initweight !82
  %1 = load float, float* %arrayidx9, align 4, !taffo.info !30, !taffo.initweight !88
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !30, !taffo.initweight !82
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !30, !taffo.initweight !88
  %2 = load float, float* %arrayidx11, align 4, !taffo.info !30, !taffo.initweight !89
  %mul = fmul float %1, %2, !taffo.info !90, !taffo.initweight !89
  %add = fadd float %0, %mul, !taffo.info !92, !taffo.initweight !89
  %arrayidx12 = getelementptr inbounds float, float* %s, i32 %j.0, !taffo.info !34, !taffo.initweight !82
  store float %add, float* %arrayidx12, align 4, !taffo.info !54, !taffo.initweight !88
  %arrayidx13 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !37, !taffo.initweight !82
  %3 = load float, float* %arrayidx13, align 4, !taffo.info !37, !taffo.initweight !88
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !30, !taffo.initweight !82
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !30, !taffo.initweight !88
  %4 = load float, float* %arrayidx15, align 4, !taffo.info !30, !taffo.initweight !89
  %arrayidx16 = getelementptr inbounds float, float* %p, i32 %j.0, !taffo.info !39, !taffo.initweight !82
  %5 = load float, float* %arrayidx16, align 4, !taffo.info !39, !taffo.initweight !88
  %mul17 = fmul float %4, %5, !taffo.info !94, !taffo.initweight !89
  %add18 = fadd float %3, %mul17, !taffo.info !96, !taffo.initweight !89
  %arrayidx19 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !37, !taffo.initweight !82
  store float %add18, float* %arrayidx19, align 4, !taffo.info !61, !taffo.initweight !88
  br label %for.inc20

for.inc20:                                        ; preds = %for.body7
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !72, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !98

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.1, 1, !taffo.info !72, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !99

for.end25:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, [20 x float]* noundef %A, float* noundef %r, float* noundef %p, float* noundef %s, float* noundef %q) #0 !taffo.initweight !80 !taffo.funinfo !100 !taffo.sourceFunction !47 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !101, !taffo.initweight !33
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !102, !taffo.initweight !45
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !103, !taffo.initweight !55

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %m, !taffo.info !105, !taffo.initweight !45
  %conv = sitofp i32 %rem to float, !taffo.info !107, !taffo.initweight !55
  %conv3 = sitofp i32 %m to float, !taffo.info !109
  %div = fdiv float %conv, %conv3, !taffo.info !110, !taffo.initweight !111
  %arrayidx = getelementptr inbounds float, float* %p, i32 %i.0, !taffo.info !110, !taffo.initweight !45
  store float %div, float* %arrayidx, align 4, !taffo.info !83, !taffo.initweight !55
  %arrayidx4 = getelementptr inbounds float, float* %s, i32 %i.0, !taffo.info !112, !taffo.initweight !45
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !83, !taffo.initweight !55, !taffo.constinfo !84
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !113, !taffo.initweight !45, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc28, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ], !taffo.info !101, !taffo.initweight !33
  %cmp6 = icmp slt i32 %i.1, %n, !taffo.info !102, !taffo.initweight !45
  br i1 %cmp6, label %for.body8, label %for.end30, !taffo.info !103, !taffo.initweight !55

for.body8:                                        ; preds = %for.cond5
  %rem9 = srem i32 %i.1, %n, !taffo.info !115, !taffo.initweight !45
  %conv10 = sitofp i32 %rem9 to float, !taffo.info !116, !taffo.initweight !55
  %conv11 = sitofp i32 %n to float, !taffo.info !117
  %div12 = fdiv float %conv10, %conv11, !taffo.info !118, !taffo.initweight !111
  %arrayidx13 = getelementptr inbounds float, float* %r, i32 %i.1, !taffo.info !120, !taffo.initweight !45
  store float %div12, float* %arrayidx13, align 4, !taffo.info !83, !taffo.initweight !55
  %arrayidx14 = getelementptr inbounds float, float* %q, i32 %i.1, !taffo.info !121, !taffo.initweight !45
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.info !83, !taffo.initweight !55, !taffo.constinfo !84
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.body8
  %j.0 = phi i32 [ 0, %for.body8 ], [ %inc26, %for.inc25 ], !taffo.info !115, !taffo.initweight !33
  %cmp16 = icmp slt i32 %j.0, %m, !taffo.info !102, !taffo.initweight !45
  br i1 %cmp16, label %for.body18, label %for.end27, !taffo.info !122, !taffo.initweight !55

for.body18:                                       ; preds = %for.cond15
  %add = add nsw i32 %j.0, 1, !taffo.info !124, !taffo.initweight !45, !taffo.constinfo !23
  %mul = mul nsw i32 %i.1, %add, !taffo.info !125, !taffo.initweight !45
  %rem19 = srem i32 %mul, %n, !taffo.info !115, !taffo.initweight !55
  %conv20 = sitofp i32 %rem19 to float, !taffo.info !116, !taffo.initweight !111
  %conv21 = sitofp i32 %n to float, !taffo.info !117
  %div22 = fdiv float %conv20, %conv21, !taffo.info !118, !taffo.initweight !82
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !120, !taffo.initweight !45
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.0, !taffo.info !120, !taffo.initweight !45
  store float %div22, float* %arrayidx24, align 4, !taffo.info !83, !taffo.initweight !55
  br label %for.inc25

for.inc25:                                        ; preds = %for.body18
  %inc26 = add nsw i32 %j.0, 1, !taffo.info !124, !taffo.initweight !45, !taffo.constinfo !23
  br label %for.cond15, !llvm.loop !127

for.end27:                                        ; preds = %for.cond15
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.info !113, !taffo.initweight !45, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !128

for.end30:                                        ; preds = %for.cond5
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

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
!33 = !{i32 0}
!34 = !{!35, !1, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 29}
!36 = !{!"s"}
!37 = !{!35, !3, i1 false, i2 -1}
!38 = !{!"q"}
!39 = !{!31, !40, i1 false, i2 -1}
!40 = !{double 0.000000e+00, double 0x3FEE666666666666}
!41 = !{!31, i1 false, i1 false, i2 -1}
!42 = !{i32 1}
!43 = !{!35, i1 false, i1 false, i2 -1}
!44 = !{i1 false, !32, i1 false, i2 -1}
!45 = !{i32 2}
!46 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!47 = distinct !{null}
!48 = !{i1 false}
!49 = distinct !{null}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 2.100000e+01}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 1.000000e+00}
!54 = !{i1 false, !1, i1 false, i2 -1}
!55 = !{i32 3}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 2.100000e+01}
!58 = distinct !{!58, !25}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 2.300000e+01}
!61 = !{i1 false, !3, i1 false, i2 -1}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 2.300000e+01}
!64 = distinct !{!64, !25}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!67 = !{i32 1, !68, i32 1, !70, i32 1, !0, i32 1, !2}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 2.000000e+01, double 2.000000e+01}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 2.200000e+01, double 2.200000e+01}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 1.000000e+00}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 0.000000e+00}
!76 = !{i1 false, i1 false, i1 false}
!77 = !{i1 false, i1 false, i1 false, i1 false}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !25}
!80 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!81 = !{i32 1, !68, i32 1, !70, i32 1, !30, i32 1, !34, i32 1, !37, i32 1, !39, i32 1, !30}
!82 = !{i32 5}
!83 = !{i1 false, i1 false, i1 false, i2 1}
!84 = !{!74, i1 false}
!85 = distinct !{!85, !25}
!86 = !{!87, !1, i1 false, i2 -1}
!87 = !{!"fixp", i32 32, i32 28}
!88 = !{i32 6}
!89 = !{i32 7}
!90 = !{!31, !91, i1 false, i2 -1}
!91 = !{double 0.000000e+00, double 0x3FED2830F4FF15D6}
!92 = !{!87, !93, i1 false, i2 -1}
!93 = !{double 0.000000e+00, double 0x401F021D5E5788AF}
!94 = !{!35, !95, i1 false, i2 -1}
!95 = !{double 0.000000e+00, double 0x3FED04A6A875D56F}
!96 = !{!35, !97, i1 false, i2 -1}
!97 = !{double 0.000000e+00, double 0x401BCF2096787CE9}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25}
!100 = !{i32 1, !68, i32 1, !70, i32 1, !30, i32 1, !30, i32 1, !39, i32 1, !34, i32 1, !37}
!101 = !{i1 false, !60, i1 false, i2 1}
!102 = !{i1 false, !53, i1 false, i2 1}
!103 = !{i1 false, !104, i1 false, i2 1}
!104 = !{double 0.000000e+00, double 2.200000e+01}
!105 = !{i1 false, !106, i1 false, i2 1}
!106 = !{double 0.000000e+00, double 1.900000e+01}
!107 = !{!108, !106, i1 false, i2 1}
!108 = !{!"fixp", i32 32, i32 27}
!109 = !{!108, !69, i1 false, i2 1}
!110 = !{!31, !40, i1 false, i2 1}
!111 = !{i32 4}
!112 = !{!35, !1, i1 false, i2 1}
!113 = !{i1 false, !63, i1 false, i2 1}
!114 = distinct !{!114, !25}
!115 = !{i1 false, !51, i1 false, i2 1}
!116 = !{!108, !51, i1 false, i2 1}
!117 = !{!108, !71, i1 false, i2 1}
!118 = !{!31, !119, i1 false, i2 1}
!119 = !{double 0.000000e+00, double 0x3FEE8BA2E8BA2E8C}
!120 = !{!31, !32, i1 false, i2 1}
!121 = !{!35, !3, i1 false, i2 1}
!122 = !{i1 false, !123, i1 false, i2 1}
!123 = !{double 0.000000e+00, double 2.000000e+01}
!124 = !{i1 false, !57, i1 false, i2 1}
!125 = !{i1 false, !126, i1 false, i2 1}
!126 = !{double 0.000000e+00, double 4.620000e+02}
!127 = distinct !{!127, !25}
!128 = distinct !{!128, !25}
