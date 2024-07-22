; ModuleID = './build/bin/fixed/trmm/16/trmm-standard-1-fixed-16.out.ll.2.taffotmp.ll'
source_filename = "./sources/trmm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/trmm.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(0.0,1.0) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [46 x i8] c"target('B') scalar(range(0.0,5.765625) final)\00", section "llvm.metadata", !taffo.info !4
@B_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !6
@.str.4 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 10))\00", section "llvm.metadata", !taffo.info !0
@.str.5 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 16))\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.7 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !19 !taffo.funinfo !20 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !21
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !24
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.start !33 {
entry:
  %alpha = alloca float, align 4, !taffo.initweight !34, !taffo.info !35
  %A = alloca [10 x [10 x float]], align 4, !taffo.initweight !34, !taffo.info !37
  %B = alloca [10 x [16 x float]], align 4, !taffo.initweight !34, !taffo.info !39, !taffo.target !40
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !41, !taffo.info !35
  %A2 = bitcast [10 x [10 x float]]* %A to i8*, !taffo.initweight !41, !taffo.info !37
  %B3 = bitcast [10 x [16 x float]]* %B to i8*, !taffo.initweight !41, !taffo.info !39, !taffo.target !40
  %arraydecay = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !37
  %arraydecay4 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39, !taffo.target !40
  call void @init_array.2(i32 noundef 10, i32 noundef 16, float* noundef %alpha, [10 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay4), !taffo.initweight !41, !taffo.info !35, !taffo.originalCall !42, !taffo.constinfo !43
  call void @timer_start(), !taffo.constinfo !44
  %0 = load float, float* %alpha, align 4, !taffo.initweight !41, !taffo.info !35
  %arraydecay5 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !41, !taffo.info !37
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !41, !taffo.info !39, !taffo.target !40
  call void @kernel_trmm.1(i32 noundef 10, i32 noundef 16, float noundef %0, [10 x float]* noundef %arraydecay5, [16 x float]* noundef %arraydecay6), !taffo.initweight !45, !taffo.info !35, !taffo.originalCall !46, !taffo.constinfo !43
  call void @timer_stop(), !taffo.constinfo !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !49
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !50
  %cmp8 = icmp slt i32 %j.0, 16, !taffo.info !49
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 %i.0, !taffo.initweight !41, !taffo.info !39, !taffo.target !40
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !45, !taffo.info !39, !taffo.target !40
  %1 = load float, float* %arrayidx10, align 4, !taffo.initweight !52, !taffo.info !39, !taffo.target !40
  %arrayidx11 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !6
  store float %1, float* %arrayidx12, align 4, !taffo.initweight !53, !taffo.info !39, !taffo.target !40
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !54, !taffo.constinfo !27
  br label %for.cond7, !llvm.loop !56

for.end:                                          ; preds = %for.cond7
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.info !57, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !59

for.end15:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 0)), !taffo.constinfo !60
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !61 !taffo.funinfo !62 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.equivalentChild !63 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !64
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.initweight !34, !taffo.info !66
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !45, !taffo.info !66
  br i1 %cmp, label %for.body, label %for.end29, !taffo.initweight !52, !taffo.info !66

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !67
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !45, !taffo.info !67
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !52, !taffo.info !67

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.initweight !45, !taffo.info !66
  br i1 %cmp6, label %if.then, label %if.else, !taffo.initweight !52, !taffo.info !66

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.initweight !45, !taffo.info !66
  %rem = srem i32 %add, %m, !taffo.initweight !52, !taffo.info !66
  %conv = sitofp i32 %rem to float, !taffo.initweight !53, !taffo.info !66
  %conv7 = sitofp i32 %m to float
  %div = fdiv float %conv, %conv7, !taffo.initweight !69, !taffo.info !66
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !45, !taffo.info !70
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !45, !taffo.info !70
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !52, !taffo.info !70
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !45, !taffo.info !70
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.initweight !45, !taffo.info !70
  store float 0.000000e+00, float* %arrayidx10, align 4, !taffo.initweight !52, !taffo.info !70, !taffo.constinfo !71
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !45, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !74

for.end:                                          ; preds = %for.cond3
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !45, !taffo.info !70
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %i.0, !taffo.initweight !45, !taffo.info !70
  store float 1.000000e+00, float* %arrayidx12, align 4, !taffo.initweight !52, !taffo.info !70, !taffo.constinfo !75
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.initweight !34, !taffo.info !67
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.initweight !45, !taffo.info !67
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.initweight !52, !taffo.info !67

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.initweight !45, !taffo.info !66
  %add17 = add nsw i32 %n, %sub, !taffo.initweight !52, !taffo.info !66
  %rem18 = srem i32 %add17, %n, !taffo.initweight !53, !taffo.info !66
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !69, !taffo.info !66
  %conv20 = sitofp i32 %n to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !78, !taffo.info !66
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !45, !taffo.info !70
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.1, !taffo.initweight !45, !taffo.info !70
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !52, !taffo.info !70
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.initweight !45, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond13, !llvm.loop !79

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.initweight !45, !taffo.info !66, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !80

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.equivalentChild !81 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21 ]
  %cmp = icmp slt i32 %i.0, %m
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc19, %for.inc18 ]
  %cmp2 = icmp slt i32 %j.0, %n
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %add = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ %add, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %m
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %k.0
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %i.0
  %0 = load float, float* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %k.0
  %arrayidx9 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx8, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx9, align 4
  %mul = fmul float %0, %1
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx11, align 4
  %add12 = fadd float %2, %mul
  store float %add12, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !82

for.end:                                          ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0
  %3 = load float, float* %arrayidx14, align 4
  %mul15 = fmul float %alpha, %3
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx16, i32 0, i32 %j.0
  store float %mul15, float* %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !83

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !84

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %B) #0 !taffo.initweight !85 !taffo.funinfo !86 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !49
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !76
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !72
  %add = add nsw i32 %mul, %j.0, !taffo.info !72
  %rem = srem i32 %add, 20, !taffo.info !72, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !76
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !taffo.constinfo !89
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double noundef %conv), !taffo.constinfo !60
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !90

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !91

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.1(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !92 !taffo.funinfo !93 !taffo.sourceFunction !46 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21 ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc19, %for.inc18 ], !taffo.info !49
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !76
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %add = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ %add, %for.body3 ], [ %inc, %for.inc ], !taffo.info !94
  %cmp5 = icmp slt i32 %k.0, %m, !taffo.info !76
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %k.0, !taffo.initweight !69, !taffo.info !37
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %i.0, !taffo.initweight !78, !taffo.info !37
  %0 = load float, float* %arrayidx7, align 4, !taffo.initweight !96, !taffo.info !37
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %k.0, !taffo.initweight !69, !taffo.info !39
  %arrayidx9 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx8, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !39
  %1 = load float, float* %arrayidx9, align 4, !taffo.initweight !96, !taffo.info !39
  %mul = fmul float %0, %1, !taffo.initweight !97, !taffo.info !39
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !69, !taffo.info !39
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !39
  %2 = load float, float* %arrayidx11, align 4, !taffo.initweight !96, !taffo.info !39
  %add12 = fadd float %2, %mul, !taffo.initweight !97, !taffo.info !98
  store float %add12, float* %arrayidx11, align 4, !taffo.initweight !96, !taffo.info !39
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !100

for.end:                                          ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !69, !taffo.info !39
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !39
  %3 = load float, float* %arrayidx14, align 4, !taffo.initweight !96, !taffo.info !39
  %mul15 = fmul float %alpha, %3, !taffo.initweight !69, !taffo.info !101
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !69, !taffo.info !39
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx16, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !39
  store float %mul15, float* %arrayidx17, align 4, !taffo.initweight !78, !taffo.info !35
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !103

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !104

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !105 !taffo.funinfo !93 !taffo.sourceFunction !42 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !53, !taffo.info !35, !taffo.constinfo !64
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.initweight !34, !taffo.info !106
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !45, !taffo.info !107
  br i1 %cmp, label %for.body, label %for.end29, !taffo.initweight !52, !taffo.info !66

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !108
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !45, !taffo.info !107
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !52, !taffo.info !67

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.initweight !45, !taffo.info !107
  br i1 %cmp6, label %if.then, label %if.else, !taffo.initweight !52, !taffo.info !66

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.initweight !45, !taffo.info !110
  %rem = srem i32 %add, %m, !taffo.initweight !52, !taffo.info !112
  %conv = sitofp i32 %rem to float, !taffo.initweight !53, !taffo.info !112
  %conv7 = sitofp i32 %m to float, !taffo.info !22
  %div = fdiv float %conv, %conv7, !taffo.initweight !69, !taffo.info !114
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !45, !taffo.info !107
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !45, !taffo.info !107
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !52, !taffo.info !70
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !45, !taffo.info !107
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.initweight !45, !taffo.info !107
  store float 0.000000e+00, float* %arrayidx10, align 4, !taffo.initweight !52, !taffo.info !70, !taffo.constinfo !71
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !45, !taffo.info !116, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !118

for.end:                                          ; preds = %for.cond3
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !45, !taffo.info !107
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %i.0, !taffo.initweight !45, !taffo.info !107
  store float 1.000000e+00, float* %arrayidx12, align 4, !taffo.initweight !52, !taffo.info !70, !taffo.constinfo !75
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.initweight !34, !taffo.info !108
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.initweight !45, !taffo.info !107
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.initweight !52, !taffo.info !67

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.initweight !45, !taffo.info !119
  %add17 = add nsw i32 %n, %sub, !taffo.initweight !52, !taffo.info !110
  %rem18 = srem i32 %add17, %n, !taffo.initweight !53, !taffo.info !121
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !69, !taffo.info !121
  %conv20 = sitofp i32 %n to float, !taffo.info !87
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !78, !taffo.info !123
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !45, !taffo.info !125
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.1, !taffo.initweight !45, !taffo.info !125
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !52, !taffo.info !70
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.initweight !45, !taffo.info !116, !taffo.constinfo !27
  br label %for.cond13, !llvm.loop !126

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.initweight !45, !taffo.info !127, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !128

for.end29:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.160000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x4017100000000000}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.000000e+01}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.020000e+02}
!12 = !{i32 1, !"NumRegisterParameters", i32 0}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!19 = !{i32 -1}
!20 = !{i32 0, i1 false}
!21 = !{i1 false, !22}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 1.000000e+01, double 1.000000e+01}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 2.000000e+00, double 2.000000e+00}
!27 = !{i1 false, i1 false}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{}
!31 = !{i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false}
!33 = !{i1 true}
!34 = !{i32 0}
!35 = !{i1 false, !36, i1 false, i2 -1}
!36 = !{double 1.500000e+00, double 1.500000e+00}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 1.000000e+00}
!39 = !{i1 false, !7, i1 false, i2 -1}
!40 = !{!"B"}
!41 = !{i32 1}
!42 = !{void (i32, i32, float*, [10 x float]*, [16 x float]*)* @init_array}
!43 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!44 = !{i1 false}
!45 = !{i32 2}
!46 = !{void (i32, i32, float, [10 x float]*, [16 x float]*)* @kernel_trmm}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 1.100000e+01}
!49 = !{i1 false, !38, i1 false, i2 0}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 1.870000e+02}
!52 = !{i32 3}
!53 = !{i32 4}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 1.870000e+02}
!56 = distinct !{!56, !29}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 1.000000e+00, double 1.100000e+01}
!59 = distinct !{!59, !29}
!60 = !{i1 false, i1 false, i1 false, i1 false}
!61 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!62 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!63 = !{void (i32, i32, float*, [10 x float]*, [16 x float]*)* @init_array.2}
!64 = !{!65, i1 false}
!65 = !{i1 false, !36, i1 false, i2 0}
!66 = !{i1 false, !9, i1 false, i2 1}
!67 = !{i1 false, !68, i1 false, i2 1}
!68 = !{double 0.000000e+00, double 1.600000e+01}
!69 = !{i32 5}
!70 = !{i1 false, i1 false, i1 false, i2 1}
!71 = !{!72, i1 false}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 0.000000e+00, double 0.000000e+00}
!74 = distinct !{!74, !29}
!75 = !{!76, i1 false}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 1.000000e+00}
!78 = !{i32 6}
!79 = distinct !{!79, !29}
!80 = distinct !{!80, !29}
!81 = !{void (i32, i32, float, [10 x float]*, [16 x float]*)* @kernel_trmm.1}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = !{i32 -1, i32 -1, i32 -1}
!86 = !{i32 1, !22, i32 1, !87, i32 1, !6}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 1.600000e+01, double 1.600000e+01}
!89 = !{i1 false, i1 false, i1 false}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2}
!93 = !{i32 1, !22, i32 1, !87, i32 1, !35, i32 1, !37, i32 1, !39}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 1.000000e+00, double 2.000000e+00}
!96 = !{i32 7}
!97 = !{i32 8}
!98 = !{i1 false, !99, i1 false, i2 -1}
!99 = !{double 0.000000e+00, double 0x4027100000000000}
!100 = distinct !{!100, !29}
!101 = !{i1 false, !102, i1 false, i2 -1}
!102 = !{double 0.000000e+00, double 0x40214C0000000000}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = !{i32 -1, i32 -1, i32 1, i32 2, i32 2}
!106 = !{i1 false, !48, i1 false, i2 1}
!107 = !{i1 false, !38, i1 false, i2 1}
!108 = !{i1 false, !109, i1 false, i2 1}
!109 = !{double 0.000000e+00, double 1.700000e+01}
!110 = !{i1 false, !111, i1 false, i2 1}
!111 = !{double 0.000000e+00, double 2.600000e+01}
!112 = !{i1 false, !113, i1 false, i2 1}
!113 = !{double 0.000000e+00, double 9.000000e+00}
!114 = !{i1 false, !115, i1 false, i2 1}
!115 = !{double 0.000000e+00, double 9.000000e-01}
!116 = !{i1 false, !117, i1 false, i2 1}
!117 = !{double 1.000000e+00, double 1.700000e+01}
!118 = distinct !{!118, !29}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double -1.600000e+01, double 1.000000e+01}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double 0.000000e+00, double 1.500000e+01}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 0.000000e+00, double 9.375000e-01}
!125 = !{i1 false, !7, i1 false, i2 1}
!126 = distinct !{!126, !29}
!127 = !{i1 false, !58, i1 false, i2 1}
!128 = distinct !{!128, !29}
