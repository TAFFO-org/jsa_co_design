; ModuleID = './build/bin/fixed/mvt/8/mvt-standard-1-fixed-8.out.ll.3.taffotmp.ll'
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
  %A = alloca [20 x [20 x float]], align 4, !taffo.info !30, !taffo.initweight !33
  %x1 = alloca [20 x float], align 4, !taffo.info !34, !taffo.initweight !33, !taffo.target !36
  %x2 = alloca [20 x float], align 4, !taffo.info !37, !taffo.initweight !33, !taffo.target !38
  %y_1 = alloca [20 x float], align 4, !taffo.info !30, !taffo.initweight !33
  %y_2 = alloca [20 x float], align 4, !taffo.info !30, !taffo.initweight !33
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.info !39, !taffo.initweight !40
  %x12 = bitcast [20 x float]* %x1 to i8*, !taffo.info !41, !taffo.initweight !40, !taffo.target !36
  %x23 = bitcast [20 x float]* %x2 to i8*, !taffo.info !41, !taffo.initweight !40, !taffo.target !38
  %y_14 = bitcast [20 x float]* %y_1 to i8*, !taffo.info !39, !taffo.initweight !40
  %y_25 = bitcast [20 x float]* %y_2 to i8*, !taffo.info !39, !taffo.initweight !40
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.info !34, !taffo.initweight !40, !taffo.target !36
  %arraydecay6 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.info !37, !taffo.initweight !40, !taffo.target !38
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.info !30, !taffo.initweight !40
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.info !30, !taffo.initweight !40
  %arraydecay9 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !30, !taffo.initweight !40
  call void @init_array.2(i32 noundef 20, float* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, [20 x float]* noundef %arraydecay9), !taffo.info !42, !taffo.initweight !43, !taffo.constinfo !44, !taffo.originalCall !45
  call void @timer_start(), !taffo.constinfo !46
  %arraydecay10 = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.info !34, !taffo.initweight !40, !taffo.target !36
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.info !37, !taffo.initweight !40, !taffo.target !38
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.info !30, !taffo.initweight !40
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.info !30, !taffo.initweight !40
  %arraydecay14 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !30, !taffo.initweight !40
  call void @kernel_mvt.1(i32 noundef 20, float* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13, [20 x float]* noundef %arraydecay14), !taffo.info !42, !taffo.initweight !43, !taffo.constinfo !44, !taffo.originalCall !47
  call void @timer_stop(), !taffo.constinfo !46
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !48
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 %i.0, !taffo.info !34, !taffo.initweight !40, !taffo.target !36
  %0 = load float, float* %arrayidx, align 4, !taffo.info !34, !taffo.initweight !43, !taffo.target !36
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i32 0, i32 %i.0, !taffo.info !0
  store float %0, float* %arrayidx15, align 4, !taffo.info !52, !taffo.initweight !53, !taffo.target !36
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 %i.0, !taffo.info !37, !taffo.initweight !40, !taffo.target !38
  %1 = load float, float* %arrayidx16, align 4, !taffo.info !37, !taffo.initweight !43, !taffo.target !38
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i32 0, i32 %i.0, !taffo.info !2
  store float %1, float* %arrayidx17, align 4, !taffo.info !54, !taffo.initweight !53, !taffo.target !38
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !55, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x1_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x2_float, i32 0, i32 0)), !taffo.constinfo !58
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x1, float* noundef %x2) #0 !taffo.initweight !59 !taffo.funinfo !60 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !50
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !65, !taffo.constinfo !23
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !63
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !67
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv), !taffo.constinfo !58
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !63, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !50
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !63
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !65, !taffo.constinfo !23
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !63
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !67
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !2
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !2
  %conv14 = fpext float %5 to double, !taffo.info !2
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !58
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !63, !taffo.constinfo !23
  br label %for.cond3, !llvm.loop !69

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !27 !taffo.funinfo !28 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt.1(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !70 !taffo.funinfo !71 !taffo.sourceFunction !47 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !50
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !50
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !63
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !34, !taffo.initweight !72
  %0 = load float, float* %arrayidx, align 4, !taffo.info !34, !taffo.initweight !73
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !30, !taffo.initweight !72
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx4, i32 0, i32 %j.0, !taffo.info !30, !taffo.initweight !73
  %1 = load float, float* %arrayidx5, align 4, !taffo.info !30, !taffo.initweight !74
  %arrayidx6 = getelementptr inbounds float, float* %y_1, i32 %j.0, !taffo.info !30, !taffo.initweight !72
  %2 = load float, float* %arrayidx6, align 4, !taffo.info !30, !taffo.initweight !73
  %mul = fmul float %1, %2, !taffo.info !75, !taffo.initweight !74
  %add = fadd float %0, %mul, !taffo.info !77, !taffo.initweight !74
  %arrayidx7 = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !34, !taffo.initweight !72
  store float %add, float* %arrayidx7, align 4, !taffo.info !52, !taffo.initweight !73
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !63, !taffo.constinfo !23
  br label %for.cond1, !llvm.loop !79

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !63, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !80

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc28, %for.inc27 ], !taffo.info !50
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !63
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc25, %for.inc24 ], !taffo.info !50
  %cmp15 = icmp slt i32 %j.1, %n, !taffo.info !63
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %arrayidx17 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !37, !taffo.initweight !72
  %3 = load float, float* %arrayidx17, align 4, !taffo.info !37, !taffo.initweight !73
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1, !taffo.info !30, !taffo.initweight !72
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %i.1, !taffo.info !30, !taffo.initweight !73
  %4 = load float, float* %arrayidx19, align 4, !taffo.info !30, !taffo.initweight !74
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %j.1, !taffo.info !30, !taffo.initweight !72
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !30, !taffo.initweight !73
  %mul21 = fmul float %4, %5, !taffo.info !75, !taffo.initweight !74
  %add22 = fadd float %3, %mul21, !taffo.info !81, !taffo.initweight !74
  %arrayidx23 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !37, !taffo.initweight !72
  store float %add22, float* %arrayidx23, align 4, !taffo.info !54, !taffo.initweight !73
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !63, !taffo.constinfo !23
  br label %for.cond14, !llvm.loop !83

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !63, !taffo.constinfo !23
  br label %for.cond11, !llvm.loop !84

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !70 !taffo.funinfo !71 !taffo.sourceFunction !45 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ], !taffo.info !85, !taffo.initweight !33
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !86, !taffo.initweight !43
  br i1 %cmp, label %for.body, label %for.end33, !taffo.info !87, !taffo.initweight !53

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !89, !taffo.initweight !43
  %conv = sitofp i32 %rem to float, !taffo.info !91, !taffo.initweight !53
  %conv3 = sitofp i32 %n to float, !taffo.info !93
  %div = fdiv float %conv, %conv3, !taffo.info !94, !taffo.initweight !95
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !96, !taffo.initweight !43
  store float %div, float* %arrayidx, align 4, !taffo.info !97, !taffo.initweight !53
  %add = add nsw i32 %i.0, 1, !taffo.info !98, !taffo.initweight !43, !taffo.constinfo !23
  %rem4 = srem i32 %add, %n, !taffo.info !89, !taffo.initweight !53
  %conv5 = sitofp i32 %rem4 to float, !taffo.info !91, !taffo.initweight !95
  %conv6 = sitofp i32 %n to float, !taffo.info !93
  %div7 = fdiv float %conv5, %conv6, !taffo.info !94, !taffo.initweight !72
  %arrayidx8 = getelementptr inbounds float, float* %x2, i32 %i.0, !taffo.info !99, !taffo.initweight !43
  store float %div7, float* %arrayidx8, align 4, !taffo.info !97, !taffo.initweight !53
  %add9 = add nsw i32 %i.0, 3, !taffo.info !100, !taffo.initweight !43, !taffo.constinfo !23
  %rem10 = srem i32 %add9, %n, !taffo.info !89, !taffo.initweight !53
  %conv11 = sitofp i32 %rem10 to float, !taffo.info !91, !taffo.initweight !95
  %conv12 = sitofp i32 %n to float, !taffo.info !93
  %div13 = fdiv float %conv11, %conv12, !taffo.info !94, !taffo.initweight !72
  %arrayidx14 = getelementptr inbounds float, float* %y_1, i32 %i.0, !taffo.info !94, !taffo.initweight !43
  store float %div13, float* %arrayidx14, align 4, !taffo.info !97, !taffo.initweight !53
  %add15 = add nsw i32 %i.0, 4, !taffo.info !102, !taffo.initweight !43, !taffo.constinfo !23
  %rem16 = srem i32 %add15, %n, !taffo.info !89, !taffo.initweight !53
  %conv17 = sitofp i32 %rem16 to float, !taffo.info !91, !taffo.initweight !95
  %conv18 = sitofp i32 %n to float, !taffo.info !93
  %div19 = fdiv float %conv17, %conv18, !taffo.info !94, !taffo.initweight !72
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %i.0, !taffo.info !94, !taffo.initweight !43
  store float %div19, float* %arrayidx20, align 4, !taffo.info !97, !taffo.initweight !53
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !85, !taffo.initweight !33
  %cmp22 = icmp slt i32 %j.0, %n, !taffo.info !86, !taffo.initweight !43
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.info !87, !taffo.initweight !53

for.body24:                                       ; preds = %for.cond21
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !104, !taffo.initweight !43
  %rem25 = srem i32 %mul, %n, !taffo.info !89, !taffo.initweight !53
  %conv26 = sitofp i32 %rem25 to float, !taffo.info !91, !taffo.initweight !95
  %conv27 = sitofp i32 %n to float, !taffo.info !93
  %div28 = fdiv float %conv26, %conv27, !taffo.info !94, !taffo.initweight !72
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !94, !taffo.initweight !43
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx29, i32 0, i32 %j.0, !taffo.info !94, !taffo.initweight !43
  store float %div28, float* %arrayidx30, align 4, !taffo.info !97, !taffo.initweight !53
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !98, !taffo.initweight !43, !taffo.constinfo !23
  br label %for.cond21, !llvm.loop !106

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %inc32 = add nsw i32 %i.0, 1, !taffo.info !98, !taffo.initweight !43, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !107

for.end33:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

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
!33 = !{i32 0}
!34 = !{!35, !1, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 29}
!36 = !{!"x1"}
!37 = !{!35, !3, i1 false, i2 -1}
!38 = !{!"x2"}
!39 = !{!31, i1 false, i1 false, i2 -1}
!40 = !{i32 1}
!41 = !{!35, i1 false, i1 false, i2 -1}
!42 = !{i1 false, !32, i1 false, i2 -1}
!43 = !{i32 2}
!44 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!45 = distinct !{null}
!46 = !{i1 false}
!47 = distinct !{null}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 2.100000e+01}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 1.000000e+00}
!52 = !{i1 false, !1, i1 false, i2 -1}
!53 = !{i32 3}
!54 = !{i1 false, !3, i1 false, i2 -1}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 1.000000e+00, double 2.100000e+01}
!57 = distinct !{!57, !25}
!58 = !{i1 false, i1 false, i1 false, i1 false}
!59 = !{i32 -1, i32 -1, i32 -1}
!60 = !{i32 1, !61, i32 1, !0, i32 1, !2}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 2.000000e+01, double 2.000000e+01}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 1.000000e+00}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 0.000000e+00}
!67 = !{i1 false, i1 false, i1 false}
!68 = distinct !{!68, !25}
!69 = distinct !{!69, !25}
!70 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!71 = !{i32 1, !61, i32 1, !34, i32 1, !37, i32 1, !30, i32 1, !30, i32 1, !30}
!72 = !{i32 5}
!73 = !{i32 6}
!74 = !{i32 7}
!75 = !{!35, !76, i1 false, i2 -1}
!76 = !{double 0.000000e+00, double 9.025000e-01}
!77 = !{!35, !78, i1 false, i2 -1}
!78 = !{double 0.000000e+00, double 0x401A9C28F5C28F5C}
!79 = distinct !{!79, !25}
!80 = distinct !{!80, !25}
!81 = !{!35, !82, i1 false, i2 -1}
!82 = !{double 0.000000e+00, double 6.577500e+00}
!83 = distinct !{!83, !25}
!84 = distinct !{!84, !25}
!85 = !{i1 false, !49, i1 false, i2 1}
!86 = !{i1 false, !51, i1 false, i2 1}
!87 = !{i1 false, !88, i1 false, i2 1}
!88 = !{double 0.000000e+00, double 2.000000e+01}
!89 = !{i1 false, !90, i1 false, i2 1}
!90 = !{double 0.000000e+00, double 1.900000e+01}
!91 = !{!92, !90, i1 false, i2 1}
!92 = !{!"fixp", i32 32, i32 27}
!93 = !{!92, !62, i1 false, i2 1}
!94 = !{!31, !32, i1 false, i2 1}
!95 = !{i32 4}
!96 = !{!35, !1, i1 false, i2 1}
!97 = !{i1 false, i1 false, i1 false, i2 1}
!98 = !{i1 false, !56, i1 false, i2 1}
!99 = !{!35, !3, i1 false, i2 1}
!100 = !{i1 false, !101, i1 false, i2 1}
!101 = !{double 3.000000e+00, double 2.300000e+01}
!102 = !{i1 false, !103, i1 false, i2 1}
!103 = !{double 4.000000e+00, double 2.400000e+01}
!104 = !{i1 false, !105, i1 false, i2 1}
!105 = !{double 0.000000e+00, double 4.000000e+02}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
