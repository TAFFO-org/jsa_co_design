; ModuleID = './build/bin/fixed/mvt/11/mvt-standard-1-fixed-11.out.ll.2.taffotmp.ll'
source_filename = "./sources/mvt.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [30 x i8] c"scalar(range(0.0,0.95) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [16 x i8] c"./sources/mvt.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [43 x i8] c"target('x1') scalar(range(0.0,5.75) final)\00", section "llvm.metadata", !taffo.info !4
@.str.3 = private unnamed_addr constant [44 x i8] c"target('x2') scalar(range(0.0,5.675) final)\00", section "llvm.metadata", !taffo.info !4
@x1_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !6
@x2_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !8
@.str.4 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !10
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !12

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !21 !taffo.funinfo !22 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !23
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !26
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !32 !taffo.funinfo !32 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !32 !taffo.funinfo !32 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !33 !taffo.funinfo !34 !taffo.start !35 {
entry:
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !36, !taffo.info !37
  %x1 = alloca [20 x float], align 4, !taffo.initweight !36, !taffo.info !39, !taffo.target !40
  %x2 = alloca [20 x float], align 4, !taffo.initweight !36, !taffo.info !41, !taffo.target !42
  %y_1 = alloca [20 x float], align 4, !taffo.initweight !36, !taffo.info !37
  %y_2 = alloca [20 x float], align 4, !taffo.initweight !36, !taffo.info !37
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !43, !taffo.info !37
  %x12 = bitcast [20 x float]* %x1 to i8*, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %x23 = bitcast [20 x float]* %x2 to i8*, !taffo.initweight !43, !taffo.info !41, !taffo.target !42
  %y_14 = bitcast [20 x float]* %y_1 to i8*, !taffo.initweight !43, !taffo.info !37
  %y_25 = bitcast [20 x float]* %y_2 to i8*, !taffo.initweight !43, !taffo.info !37
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %arraydecay6 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.initweight !43, !taffo.info !41, !taffo.target !42
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.initweight !43, !taffo.info !37
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.initweight !43, !taffo.info !37
  %arraydecay9 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !43, !taffo.info !37
  call void @init_array.2(i32 noundef 20, float* noundef %arraydecay, float* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, [20 x float]* noundef %arraydecay9), !taffo.initweight !44, !taffo.info !37, !taffo.originalCall !45, !taffo.constinfo !46
  call void @timer_start(), !taffo.constinfo !47
  %arraydecay10 = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 0, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 0, !taffo.initweight !43, !taffo.info !41, !taffo.target !42
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %y_1, i32 0, i32 0, !taffo.initweight !43, !taffo.info !37
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y_2, i32 0, i32 0, !taffo.initweight !43, !taffo.info !37
  %arraydecay14 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !43, !taffo.info !37
  call void @kernel_mvt.1(i32 noundef 20, float* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13, [20 x float]* noundef %arraydecay14), !taffo.initweight !44, !taffo.info !37, !taffo.originalCall !48, !taffo.constinfo !46
  call void @timer_stop(), !taffo.constinfo !47
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !51
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x1, i32 0, i32 %i.0, !taffo.initweight !43, !taffo.info !39, !taffo.target !40
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !44, !taffo.info !39, !taffo.target !40
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* @x1_float, i32 0, i32 %i.0, !taffo.info !6
  store float %0, float* %arrayidx15, align 4, !taffo.initweight !53, !taffo.info !39, !taffo.target !40
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %x2, i32 0, i32 %i.0, !taffo.initweight !43, !taffo.info !41, !taffo.target !42
  %1 = load float, float* %arrayidx16, align 4, !taffo.initweight !44, !taffo.info !41, !taffo.target !42
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* @x2_float, i32 0, i32 %i.0, !taffo.info !8
  store float %1, float* %arrayidx17, align 4, !taffo.initweight !53, !taffo.info !41, !taffo.target !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !54, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x1_float, i32 0, i32 0), float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x2_float, i32 0, i32 0)), !taffo.constinfo !57
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !58 !taffo.funinfo !59 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !60 !taffo.funinfo !61 !taffo.equivalentChild !62 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ], !taffo.initweight !36, !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !44, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end33, !taffo.initweight !53, !taffo.info !63

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.initweight !44, !taffo.info !63
  %conv = sitofp i32 %rem to float, !taffo.initweight !53, !taffo.info !63
  %conv3 = sitofp i32 %n to float
  %div = fdiv float %conv, %conv3, !taffo.initweight !65, !taffo.info !63
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.initweight !44, !taffo.info !66
  store float %div, float* %arrayidx, align 4, !taffo.initweight !53, !taffo.info !66
  %add = add nsw i32 %i.0, 1, !taffo.initweight !44, !taffo.info !63, !taffo.constinfo !29
  %rem4 = srem i32 %add, %n, !taffo.initweight !53, !taffo.info !63
  %conv5 = sitofp i32 %rem4 to float, !taffo.initweight !65, !taffo.info !63
  %conv6 = sitofp i32 %n to float
  %div7 = fdiv float %conv5, %conv6, !taffo.initweight !67, !taffo.info !63
  %arrayidx8 = getelementptr inbounds float, float* %x2, i32 %i.0, !taffo.initweight !44, !taffo.info !66
  store float %div7, float* %arrayidx8, align 4, !taffo.initweight !53, !taffo.info !66
  %add9 = add nsw i32 %i.0, 3, !taffo.initweight !44, !taffo.info !63, !taffo.constinfo !29
  %rem10 = srem i32 %add9, %n, !taffo.initweight !53, !taffo.info !63
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !65, !taffo.info !63
  %conv12 = sitofp i32 %n to float
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !67, !taffo.info !63
  %arrayidx14 = getelementptr inbounds float, float* %y_1, i32 %i.0, !taffo.initweight !44, !taffo.info !66
  store float %div13, float* %arrayidx14, align 4, !taffo.initweight !53, !taffo.info !66
  %add15 = add nsw i32 %i.0, 4, !taffo.initweight !44, !taffo.info !63, !taffo.constinfo !29
  %rem16 = srem i32 %add15, %n, !taffo.initweight !53, !taffo.info !63
  %conv17 = sitofp i32 %rem16 to float, !taffo.initweight !65, !taffo.info !63
  %conv18 = sitofp i32 %n to float
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !67, !taffo.info !63
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %i.0, !taffo.initweight !44, !taffo.info !66
  store float %div19, float* %arrayidx20, align 4, !taffo.initweight !53, !taffo.info !66
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !36, !taffo.info !63
  %cmp22 = icmp slt i32 %j.0, %n, !taffo.initweight !44, !taffo.info !63
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.initweight !53, !taffo.info !63

for.body24:                                       ; preds = %for.cond21
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !44, !taffo.info !63
  %rem25 = srem i32 %mul, %n, !taffo.initweight !53, !taffo.info !63
  %conv26 = sitofp i32 %rem25 to float, !taffo.initweight !65, !taffo.info !63
  %conv27 = sitofp i32 %n to float
  %div28 = fdiv float %conv26, %conv27, !taffo.initweight !67, !taffo.info !63
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !44, !taffo.info !66
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx29, i32 0, i32 %j.0, !taffo.initweight !44, !taffo.info !66
  store float %div28, float* %arrayidx30, align 4, !taffo.initweight !53, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !44, !taffo.info !63, !taffo.constinfo !29
  br label %for.cond21, !llvm.loop !68

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %inc32 = add nsw i32 %i.0, 1, !taffo.initweight !44, !taffo.info !63, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !69

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !60 !taffo.funinfo !61 !taffo.equivalentChild !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %n
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx4, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds float, float* %y_1, i32 %j.0
  %2 = load float, float* %arrayidx6, align 4
  %mul = fmul float %1, %2
  %add = fadd float %0, %mul
  %arrayidx7 = getelementptr inbounds float, float* %x1, i32 %i.0
  store float %add, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !71

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !72

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc28, %for.inc27 ]
  %cmp12 = icmp slt i32 %i.1, %n
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc25, %for.inc24 ]
  %cmp15 = icmp slt i32 %j.1, %n
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %arrayidx17 = getelementptr inbounds float, float* %x2, i32 %i.1
  %3 = load float, float* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %i.1
  %4 = load float, float* %arrayidx19, align 4
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %j.1
  %5 = load float, float* %arrayidx20, align 4
  %mul21 = fmul float %4, %5
  %add22 = fadd float %3, %mul21
  %arrayidx23 = getelementptr inbounds float, float* %x2, i32 %i.1
  store float %add22, float* %arrayidx23, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.constinfo !29
  br label %for.cond14, !llvm.loop !73

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.1, 1, !taffo.constinfo !29
  br label %for.cond11, !llvm.loop !74

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x1, float* noundef %x2) #0 !taffo.initweight !75 !taffo.funinfo !76 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !81, !taffo.constinfo !29
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !79
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !83
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv), !taffo.constinfo !57
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %for.inc16 ], !taffo.info !51
  %cmp4 = icmp slt i32 %i.1, %n, !taffo.info !79
  br i1 %cmp4, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond3
  %rem7 = srem i32 %i.1, 20, !taffo.info !81, !taffo.constinfo !29
  %cmp8 = icmp eq i32 %rem7, 0, !taffo.info !79
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)), !taffo.constinfo !83
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx13 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.info !8
  %5 = load float, float* %arrayidx13, align 4, !taffo.info !8
  %conv14 = fpext float %5 to double, !taffo.info !8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), double noundef %conv14), !taffo.constinfo !57
  br label %for.inc16

for.inc16:                                        ; preds = %if.end12
  %inc17 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !29
  br label %for.cond3, !llvm.loop !85

for.end18:                                        ; preds = %for.cond3
  ret void
}

declare !taffo.initweight !33 !taffo.funinfo !34 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_mvt.1(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !86 !taffo.funinfo !87 !taffo.sourceFunction !48 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !51
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !51
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.initweight !67, !taffo.info !39
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !88, !taffo.info !39
  %arrayidx4 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !67, !taffo.info !37
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx4, i32 0, i32 %j.0, !taffo.initweight !88, !taffo.info !37
  %1 = load float, float* %arrayidx5, align 4, !taffo.initweight !89, !taffo.info !37
  %arrayidx6 = getelementptr inbounds float, float* %y_1, i32 %j.0, !taffo.initweight !67, !taffo.info !37
  %2 = load float, float* %arrayidx6, align 4, !taffo.initweight !88, !taffo.info !37
  %mul = fmul float %1, %2, !taffo.initweight !89, !taffo.info !90
  %add = fadd float %0, %mul, !taffo.initweight !89, !taffo.info !92
  %arrayidx7 = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.initweight !67, !taffo.info !39
  store float %add, float* %arrayidx7, align 4, !taffo.initweight !88, !taffo.info !39
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !29
  br label %for.cond1, !llvm.loop !94

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !95

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc28, %for.inc27 ], !taffo.info !51
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !79
  br i1 %cmp12, label %for.body13, label %for.end29

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc25, %for.inc24 ], !taffo.info !51
  %cmp15 = icmp slt i32 %j.1, %n, !taffo.info !79
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %arrayidx17 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.initweight !67, !taffo.info !41
  %3 = load float, float* %arrayidx17, align 4, !taffo.initweight !88, !taffo.info !41
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.1, !taffo.initweight !67, !taffo.info !37
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %i.1, !taffo.initweight !88, !taffo.info !37
  %4 = load float, float* %arrayidx19, align 4, !taffo.initweight !89, !taffo.info !37
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %j.1, !taffo.initweight !67, !taffo.info !37
  %5 = load float, float* %arrayidx20, align 4, !taffo.initweight !88, !taffo.info !37
  %mul21 = fmul float %4, %5, !taffo.initweight !89, !taffo.info !90
  %add22 = fadd float %3, %mul21, !taffo.initweight !89, !taffo.info !96
  %arrayidx23 = getelementptr inbounds float, float* %x2, i32 %i.1, !taffo.initweight !67, !taffo.info !41
  store float %add22, float* %arrayidx23, align 4, !taffo.initweight !88, !taffo.info !41
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !79, !taffo.constinfo !29
  br label %for.cond14, !llvm.loop !98

for.end26:                                        ; preds = %for.cond14
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !79, !taffo.constinfo !29
  br label %for.cond11, !llvm.loop !99

for.end29:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, float* noundef %x1, float* noundef %x2, float* noundef %y_1, float* noundef %y_2, [20 x float]* noundef %A) #0 !taffo.initweight !86 !taffo.funinfo !87 !taffo.sourceFunction !45 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc32, %for.inc31 ], !taffo.initweight !36, !taffo.info !100
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !44, !taffo.info !101
  br i1 %cmp, label %for.body, label %for.end33, !taffo.initweight !53, !taffo.info !63

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.initweight !44, !taffo.info !102
  %conv = sitofp i32 %rem to float, !taffo.initweight !53, !taffo.info !102
  %conv3 = sitofp i32 %n to float, !taffo.info !77
  %div = fdiv float %conv, %conv3, !taffo.initweight !65, !taffo.info !104
  %arrayidx = getelementptr inbounds float, float* %x1, i32 %i.0, !taffo.initweight !44, !taffo.info !105
  store float %div, float* %arrayidx, align 4, !taffo.initweight !53, !taffo.info !66
  %add = add nsw i32 %i.0, 1, !taffo.initweight !44, !taffo.info !106, !taffo.constinfo !29
  %rem4 = srem i32 %add, %n, !taffo.initweight !53, !taffo.info !102
  %conv5 = sitofp i32 %rem4 to float, !taffo.initweight !65, !taffo.info !102
  %conv6 = sitofp i32 %n to float, !taffo.info !77
  %div7 = fdiv float %conv5, %conv6, !taffo.initweight !67, !taffo.info !104
  %arrayidx8 = getelementptr inbounds float, float* %x2, i32 %i.0, !taffo.initweight !44, !taffo.info !107
  store float %div7, float* %arrayidx8, align 4, !taffo.initweight !53, !taffo.info !66
  %add9 = add nsw i32 %i.0, 3, !taffo.initweight !44, !taffo.info !108, !taffo.constinfo !29
  %rem10 = srem i32 %add9, %n, !taffo.initweight !53, !taffo.info !102
  %conv11 = sitofp i32 %rem10 to float, !taffo.initweight !65, !taffo.info !102
  %conv12 = sitofp i32 %n to float, !taffo.info !77
  %div13 = fdiv float %conv11, %conv12, !taffo.initweight !67, !taffo.info !104
  %arrayidx14 = getelementptr inbounds float, float* %y_1, i32 %i.0, !taffo.initweight !44, !taffo.info !104
  store float %div13, float* %arrayidx14, align 4, !taffo.initweight !53, !taffo.info !66
  %add15 = add nsw i32 %i.0, 4, !taffo.initweight !44, !taffo.info !110, !taffo.constinfo !29
  %rem16 = srem i32 %add15, %n, !taffo.initweight !53, !taffo.info !102
  %conv17 = sitofp i32 %rem16 to float, !taffo.initweight !65, !taffo.info !102
  %conv18 = sitofp i32 %n to float, !taffo.info !77
  %div19 = fdiv float %conv17, %conv18, !taffo.initweight !67, !taffo.info !104
  %arrayidx20 = getelementptr inbounds float, float* %y_2, i32 %i.0, !taffo.initweight !44, !taffo.info !104
  store float %div19, float* %arrayidx20, align 4, !taffo.initweight !53, !taffo.info !66
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !36, !taffo.info !100
  %cmp22 = icmp slt i32 %j.0, %n, !taffo.initweight !44, !taffo.info !101
  br i1 %cmp22, label %for.body24, label %for.end, !taffo.initweight !53, !taffo.info !63

for.body24:                                       ; preds = %for.cond21
  %mul = mul nsw i32 %i.0, %j.0, !taffo.initweight !44, !taffo.info !112
  %rem25 = srem i32 %mul, %n, !taffo.initweight !53, !taffo.info !102
  %conv26 = sitofp i32 %rem25 to float, !taffo.initweight !65, !taffo.info !102
  %conv27 = sitofp i32 %n to float, !taffo.info !77
  %div28 = fdiv float %conv26, %conv27, !taffo.initweight !67, !taffo.info !104
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !44, !taffo.info !104
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx29, i32 0, i32 %j.0, !taffo.initweight !44, !taffo.info !104
  store float %div28, float* %arrayidx30, align 4, !taffo.initweight !53, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !44, !taffo.info !106, !taffo.constinfo !29
  br label %for.cond21, !llvm.loop !114

for.end:                                          ; preds = %for.cond21
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %inc32 = add nsw i32 %i.0, 1, !taffo.initweight !44, !taffo.info !106, !taffo.constinfo !29
  br label %for.cond, !llvm.loop !115

for.end33:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.180000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.200000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 5.750000e+00}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 5.675000e+00}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.000000e+01}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.020000e+02}
!14 = !{i32 1, !"NumRegisterParameters", i32 0}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!21 = !{i32 -1}
!22 = !{i32 0, i1 false}
!23 = !{i1 false, !24}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 1.000000e+01, double 1.000000e+01}
!26 = !{!27, i1 false}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 2.000000e+00, double 2.000000e+00}
!29 = !{i1 false, i1 false}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{}
!33 = !{i32 -1, i32 -1}
!34 = !{i32 0, i1 false, i32 0, i1 false}
!35 = !{i1 true}
!36 = !{i32 0}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 0x3FEE666666666666}
!39 = !{i1 false, !7, i1 false, i2 -1}
!40 = !{!"x1"}
!41 = !{i1 false, !9, i1 false, i2 -1}
!42 = !{!"x2"}
!43 = !{i32 1}
!44 = !{i32 2}
!45 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array}
!46 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!47 = !{i1 false}
!48 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 2.100000e+01}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.000000e+00}
!53 = !{i32 3}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 2.100000e+01}
!56 = distinct !{!56, !31}
!57 = !{i1 false, i1 false, i1 false, i1 false}
!58 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!59 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!60 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!61 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!62 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @init_array.2}
!63 = !{i1 false, !64, i1 false, i2 1}
!64 = !{double 0.000000e+00, double 2.000000e+01}
!65 = !{i32 4}
!66 = !{i1 false, i1 false, i1 false, i2 1}
!67 = !{i32 5}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !31}
!70 = !{void (i32, float*, float*, float*, float*, [20 x float]*)* @kernel_mvt.1}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = !{i32 -1, i32 -1, i32 -1}
!76 = !{i32 1, !77, i32 1, !6, i32 1, !8}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 2.000000e+01, double 2.000000e+01}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 1.000000e+00}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0.000000e+00, double 0.000000e+00}
!83 = !{i1 false, i1 false, i1 false}
!84 = distinct !{!84, !31}
!85 = distinct !{!85, !31}
!86 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!87 = !{i32 1, !77, i32 1, !39, i32 1, !41, i32 1, !37, i32 1, !37, i32 1, !37}
!88 = !{i32 6}
!89 = !{i32 7}
!90 = !{i1 false, !91, i1 false, i2 -1}
!91 = !{double 0.000000e+00, double 9.025000e-01}
!92 = !{i1 false, !93, i1 false, i2 -1}
!93 = !{double 0.000000e+00, double 0x401A9C28F5C28F5C}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = !{i1 false, !97, i1 false, i2 -1}
!97 = !{double 0.000000e+00, double 6.577500e+00}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = !{i1 false, !50, i1 false, i2 1}
!101 = !{i1 false, !52, i1 false, i2 1}
!102 = !{i1 false, !103, i1 false, i2 1}
!103 = !{double 0.000000e+00, double 1.900000e+01}
!104 = !{i1 false, !38, i1 false, i2 1}
!105 = !{i1 false, !7, i1 false, i2 1}
!106 = !{i1 false, !55, i1 false, i2 1}
!107 = !{i1 false, !9, i1 false, i2 1}
!108 = !{i1 false, !109, i1 false, i2 1}
!109 = !{double 3.000000e+00, double 2.300000e+01}
!110 = !{i1 false, !111, i1 false, i2 1}
!111 = !{double 4.000000e+00, double 2.400000e+01}
!112 = !{i1 false, !113, i1 false, i2 1}
!113 = !{double 0.000000e+00, double 4.000000e+02}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
