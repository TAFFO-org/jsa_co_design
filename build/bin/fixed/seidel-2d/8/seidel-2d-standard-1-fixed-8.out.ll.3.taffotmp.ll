; ModuleID = './build/bin/fixed/seidel-2d/8/seidel-2d-standard-1-fixed-8.out.ll.2.taffotmp.ll'
source_filename = "./sources/seidel-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [47 x i8] c"target('A') scalar(range(0.1,20.049999) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/seidel-2d.c\00", section "llvm.metadata", !taffo.info !2
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !4
@.str.2 = private unnamed_addr constant [29 x i8] c"scalar(range(-20, 20) final)\00", section "llvm.metadata", !taffo.info !6
@.str.3 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !6
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

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
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !34, !taffo.target !35, !taffo.info !36
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !38, !taffo.target !35, !taffo.info !36
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !38, !taffo.target !35, !taffo.info !36
  call void @init_array.2(i32 noundef 20, [20 x float]* noundef %arraydecay), !taffo.initweight !39, !taffo.target !35, !taffo.info !36, !taffo.originalCall !40, !taffo.constinfo !41
  call void @timer_start(), !taffo.constinfo !42
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !38, !taffo.target !35, !taffo.info !36
  call void @kernel_seidel_2d.1(i32 noundef 10, i32 noundef 20, [20 x float]* noundef %arraydecay2), !taffo.initweight !39, !taffo.target !35, !taffo.info !36, !taffo.originalCall !43, !taffo.constinfo !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !45
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !49
  %cmp4 = icmp slt i32 %j.0, 20, !taffo.info !47
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.initweight !38, !taffo.target !35, !taffo.info !36
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !39, !taffo.target !35, !taffo.info !36
  %0 = load float, float* %arrayidx6, align 4, !taffo.initweight !51, !taffo.target !35, !taffo.info !36
  %arrayidx7 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx7, i32 0, i32 %j.0, !taffo.info !4
  store float %0, float* %arrayidx8, align 4, !taffo.initweight !52, !taffo.target !35, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !53, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !55

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !58

for.end11:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !41
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !59 !taffo.funinfo !60 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.equivalentChild !61 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.initweight !34, !taffo.info !62
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !39, !taffo.info !62
  br i1 %cmp, label %for.body, label %for.end12, !taffo.initweight !51, !taffo.info !62

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !62
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.initweight !39, !taffo.info !62
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !51, !taffo.info !62

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !39, !taffo.info !62
  %add = add nsw i32 %j.0, 2, !taffo.initweight !39, !taffo.info !62, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !51, !taffo.info !62
  %mul = fmul float %conv, %conv6, !taffo.initweight !51, !taffo.info !62
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !52, !taffo.info !62, !taffo.constinfo !64
  %conv8 = sitofp i32 %n to float
  %div = fdiv float %add7, %conv8, !taffo.initweight !65, !taffo.info !62
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !39, !taffo.info !66
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !39, !taffo.info !66
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !51, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !39, !taffo.info !62, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !67

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.initweight !39, !taffo.info !62, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !68

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !69 !taffo.funinfo !70 !taffo.equivalentChild !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc56, %for.inc55 ]
  %sub = sub nsw i32 %tsteps, 1, !taffo.constinfo !27
  %cmp = icmp sle i32 %t.0, %sub
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc52, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc53, %for.inc52 ]
  %sub2 = sub nsw i32 %n, 2, !taffo.constinfo !27
  %cmp3 = icmp sle i32 %i.0, %sub2
  br i1 %cmp3, label %for.body4, label %for.end54

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 1, %for.body4 ], [ %inc, %for.inc ]
  %sub6 = sub nsw i32 %n, 2, !taffo.constinfo !27
  %cmp7 = icmp sle i32 %j.0, %sub6
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %sub10 = sub nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub10
  %sub11 = sub nsw i32 %j.0, 1, !taffo.constinfo !27
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %sub11
  %0 = load float, float* %arrayidx12, align 4
  %sub13 = sub nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub13
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx15, align 4
  %add = fadd float %0, %1
  %sub16 = sub nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub16
  %add18 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i32 0, i32 %add18
  %2 = load float, float* %arrayidx19, align 4
  %add20 = fadd float %add, %2
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %sub22 = sub nsw i32 %j.0, 1, !taffo.constinfo !27
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx21, i32 0, i32 %sub22
  %3 = load float, float* %arrayidx23, align 4
  %add24 = fadd float %add20, %3, !taffo.initweight !39, !taffo.info !66
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx26, i32 0, i32 %j.0
  %4 = load float, float* %arrayidx27, align 4
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %add29 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %add29
  %5 = load float, float* %arrayidx30, align 4
  %add31 = fadd float %4, %5
  %add32 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add32
  %sub34 = sub nsw i32 %j.0, 1, !taffo.constinfo !27
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %sub34
  %6 = load float, float* %arrayidx35, align 4
  %add36 = fadd float %add31, %6
  %add37 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add37
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i32 0, i32 %j.0
  %7 = load float, float* %arrayidx39, align 4
  %add40 = fadd float %add36, %7
  %add41 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add41
  %add43 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx42, i32 0, i32 %add43
  %8 = load float, float* %arrayidx44, align 4
  %add45 = fadd float %add40, %8, !taffo.initweight !39, !taffo.info !66
  %add47 = fadd float %add24, %add45, !taffo.initweight !39, !taffo.info !66
  %div49 = fdiv float %add47, 9.000000e+00, !taffo.initweight !39, !taffo.info !66, !taffo.constinfo !72
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i32 %j.0
  store float %div49, float* %arrayidx51, align 4, !taffo.initweight !39, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !75

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %inc53 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !76

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %inc56 = add nsw i32 %t.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !77

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !31 !taffo.funinfo !78 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !47
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !81
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !83
  %add = add nsw i32 %mul, %j.0, !taffo.info !83
  %rem = srem i32 %add, 20, !taffo.info !83, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !81
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !41
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv = fpext float %2 to double, !taffo.info !4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !44
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !85

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !86

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d.1(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !43 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc56, %for.inc55 ], !taffo.info !47
  %sub = sub nsw i32 %tsteps, 1, !taffo.info !73, !taffo.constinfo !27
  %cmp = icmp sle i32 %t.0, %sub, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc52, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc53, %for.inc52 ], !taffo.info !89
  %sub2 = sub nsw i32 %n, 2, !taffo.info !91, !taffo.constinfo !27
  %cmp3 = icmp sle i32 %i.0, %sub2, !taffo.info !81
  br i1 %cmp3, label %for.body4, label %for.end54

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 1, %for.body4 ], [ %inc, %for.inc ], !taffo.info !89
  %sub6 = sub nsw i32 %n, 2, !taffo.info !91, !taffo.constinfo !27
  %cmp7 = icmp sle i32 %j.0, %sub6, !taffo.info !81
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %sub10 = sub nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !27
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub10, !taffo.initweight !65, !taffo.info !36
  %sub11 = sub nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !27
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %sub11, !taffo.initweight !93, !taffo.info !36
  %0 = load float, float* %arrayidx12, align 4, !taffo.initweight !94, !taffo.info !36
  %sub13 = sub nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !27
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub13, !taffo.initweight !65, !taffo.info !36
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !93, !taffo.info !36
  %1 = load float, float* %arrayidx15, align 4, !taffo.initweight !94, !taffo.info !36
  %add = fadd float %0, %1, !taffo.initweight !95, !taffo.info !96
  %sub16 = sub nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !27
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub16, !taffo.initweight !65, !taffo.info !36
  %add18 = add nsw i32 %j.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i32 0, i32 %add18, !taffo.initweight !93, !taffo.info !36
  %2 = load float, float* %arrayidx19, align 4, !taffo.initweight !94, !taffo.info !36
  %add20 = fadd float %add, %2, !taffo.initweight !95, !taffo.info !98
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !65, !taffo.info !36
  %sub22 = sub nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !27
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx21, i32 0, i32 %sub22, !taffo.initweight !93, !taffo.info !36
  %3 = load float, float* %arrayidx23, align 4, !taffo.initweight !94, !taffo.info !36
  %add24 = fadd float %add20, %3, !taffo.initweight !39, !taffo.info !100
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !65, !taffo.info !36
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.initweight !93, !taffo.info !36
  %4 = load float, float* %arrayidx27, align 4, !taffo.initweight !94, !taffo.info !36
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !65, !taffo.info !36
  %add29 = add nsw i32 %j.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %add29, !taffo.initweight !93, !taffo.info !36
  %5 = load float, float* %arrayidx30, align 4, !taffo.initweight !94, !taffo.info !36
  %add31 = fadd float %4, %5, !taffo.initweight !95, !taffo.info !96
  %add32 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add32, !taffo.initweight !65, !taffo.info !36
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !27
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %sub34, !taffo.initweight !93, !taffo.info !36
  %6 = load float, float* %arrayidx35, align 4, !taffo.initweight !94, !taffo.info !36
  %add36 = fadd float %add31, %6, !taffo.initweight !95, !taffo.info !98
  %add37 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add37, !taffo.initweight !65, !taffo.info !36
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i32 0, i32 %j.0, !taffo.initweight !93, !taffo.info !36
  %7 = load float, float* %arrayidx39, align 4, !taffo.initweight !94, !taffo.info !36
  %add40 = fadd float %add36, %7, !taffo.initweight !95, !taffo.info !102
  %add41 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add41, !taffo.initweight !65, !taffo.info !36
  %add43 = add nsw i32 %j.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx42, i32 0, i32 %add43, !taffo.initweight !93, !taffo.info !36
  %8 = load float, float* %arrayidx44, align 4, !taffo.initweight !94, !taffo.info !36
  %add45 = fadd float %add40, %8, !taffo.initweight !39, !taffo.info !103
  %add47 = fadd float %add24, %add45, !taffo.initweight !39, !taffo.info !105
  %div49 = fdiv float %add47, 9.000000e+00, !taffo.initweight !39, !taffo.info !107, !taffo.constinfo !72
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !65, !taffo.info !36
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i32 %j.0, !taffo.initweight !93, !taffo.info !36
  store float %div49, float* %arrayidx51, align 4, !taffo.initweight !39, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !108

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %inc53 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !109

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %inc56 = add nsw i32 %t.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !110

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !111 !taffo.funinfo !112 !taffo.sourceFunction !40 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.initweight !34, !taffo.info !62
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !39, !taffo.info !113
  br i1 %cmp, label %for.body, label %for.end12, !taffo.initweight !51, !taffo.info !62

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !62
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.initweight !39, !taffo.info !113
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !51, !taffo.info !62

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !39, !taffo.info !62
  %add = add nsw i32 %j.0, 2, !taffo.initweight !39, !taffo.info !114, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !51, !taffo.info !114
  %mul = fmul float %conv, %conv6, !taffo.initweight !51, !taffo.info !116
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !52, !taffo.info !118, !taffo.constinfo !64
  %conv8 = sitofp i32 %n to float, !taffo.info !79
  %div = fdiv float %add7, %conv8, !taffo.initweight !65, !taffo.info !120
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !39, !taffo.info !107
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !39, !taffo.info !107
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !51, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !39, !taffo.info !122, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !124

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.initweight !39, !taffo.info !122, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !125

for.end12:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.160000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 0x40340CCCBC05D52C}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.150000e+02}
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
!18 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
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
!35 = !{!"A"}
!36 = !{i1 false, !37, i1 false, i2 -1}
!37 = !{double 1.000000e-01, double 0x40340CCCBC05D52C}
!38 = !{i32 1}
!39 = !{i32 2}
!40 = !{void (i32, [20 x float]*)* @init_array}
!41 = !{i1 false, i1 false, i1 false}
!42 = !{i1 false}
!43 = !{void (i32, i32, [20 x float]*)* @kernel_seidel_2d}
!44 = !{i1 false, i1 false, i1 false, i1 false}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 2.100000e+01}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 1.000000e+00}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 4.410000e+02}
!51 = !{i32 3}
!52 = !{i32 4}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 1.000000e+00, double 4.410000e+02}
!55 = distinct !{!55, !29}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 2.100000e+01}
!58 = distinct !{!58, !29}
!59 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!60 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!61 = !{void (i32, [20 x float]*)* @init_array.2}
!62 = !{i1 false, !63, i1 false, i2 -1}
!63 = !{double -2.000000e+01, double 2.000000e+01}
!64 = !{i1 false, !25}
!65 = !{i32 5}
!66 = !{i1 false, i1 false, i1 false, i2 1}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !29}
!69 = !{i32 -1, i32 -1, i32 -1}
!70 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!71 = !{void (i32, i32, [20 x float]*)* @kernel_seidel_2d.1}
!72 = !{i1 false, !73}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 9.000000e+00, double 9.000000e+00}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = !{i32 1, !79, i32 1, !4}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 2.000000e+01, double 2.000000e+01}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 1.000000e+00}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 0.000000e+00, double 0.000000e+00}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !29}
!87 = !{i32 -1, i32 -1, i32 2}
!88 = !{i32 1, !22, i32 1, !79, i32 1, !36}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.000000e+00, double 2.000000e+00}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 1.800000e+01, double 1.800000e+01}
!93 = !{i32 6}
!94 = !{i32 7}
!95 = !{i32 8}
!96 = !{i1 false, !97, i1 false, i2 -1}
!97 = !{double 2.000000e-01, double 0x40440CCCBC05D52C}
!98 = !{i1 false, !99, i1 false, i2 -1}
!99 = !{double 0x3FD3333333333334, double 0x404E13331A08BFC2}
!100 = !{i1 false, !101, i1 false, i2 1}
!101 = !{double 4.000000e-01, double 0x40540CCCBC05D52C}
!102 = !{i1 false, !101, i1 false, i2 -1}
!103 = !{i1 false, !104, i1 false, i2 1}
!104 = !{double 5.000000e-01, double 0x40590FFFEB074A77}
!105 = !{i1 false, !106, i1 false, i2 1}
!106 = !{double 9.000000e-01, double 0x40668E6653868FD2}
!107 = !{i1 false, !37, i1 false, i2 1}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29}
!111 = !{i32 -1, i32 2}
!112 = !{i32 1, !79, i32 1, !36}
!113 = !{i1 false, !48, i1 false, i2 -1}
!114 = !{i1 false, !115, i1 false, i2 -1}
!115 = !{double -1.800000e+01, double 2.200000e+01}
!116 = !{i1 false, !117, i1 false, i2 -1}
!117 = !{double -4.400000e+02, double 4.400000e+02}
!118 = !{i1 false, !119, i1 false, i2 -1}
!119 = !{double -4.380000e+02, double 4.420000e+02}
!120 = !{i1 false, !121, i1 false, i2 -1}
!121 = !{double -2.190000e+01, double 2.210000e+01}
!122 = !{i1 false, !123, i1 false, i2 -1}
!123 = !{double -1.900000e+01, double 2.100000e+01}
!124 = distinct !{!124, !29}
!125 = distinct !{!125, !29}
