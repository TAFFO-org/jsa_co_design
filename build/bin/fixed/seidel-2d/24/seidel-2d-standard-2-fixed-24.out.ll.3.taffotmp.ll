; ModuleID = './build/bin/fixed/seidel-2d/24/seidel-2d-standard-2-fixed-24.out.ll.2.taffotmp.ll'
source_filename = "./sources/seidel-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [47 x i8] c"target('A') scalar(range(0.2,40.099998) final)\00", section "llvm.metadata", !taffo.info !0
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !32 !taffo.funinfo !33 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0
  %0 = load float, float* %arrayidx, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %0, %conv
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %mul, float* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !35 !taffo.funinfo !36 !taffo.equivalentChild !37 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0
  %1 = load float, float* %arrayidx4, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %1, %conv
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %mul, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !38

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !39

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !40 !taffo.funinfo !41 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %cmp2 = icmp slt i32 %j.0, %m
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %p
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %0 = mul nuw i32 %m, %p
  %1 = mul nsw i32 %i.0, %0
  %arrayidx = getelementptr inbounds float, float* %val, i32 %1
  %2 = mul nsw i32 %j.0, %p
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx, i32 %2
  %arrayidx8 = getelementptr inbounds float, float* %arrayidx7, i32 %k.0
  %3 = load float, float* %arrayidx8, align 4
  %conv = sitofp i32 %factor to float
  %mul = fmul float %3, %conv
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %mul, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !42

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !43

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !44

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !45 !taffo.funinfo !45 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !45 !taffo.funinfo !45 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.start !46 {
entry:
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !47, !taffo.target !48, !taffo.info !49
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !51, !taffo.target !48, !taffo.info !49
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !51, !taffo.target !48, !taffo.info !49
  call void @init_array.2(i32 noundef 20, [20 x float]* noundef %arraydecay), !taffo.initweight !52, !taffo.target !48, !taffo.info !49, !taffo.originalCall !53, !taffo.constinfo !54
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !51, !taffo.target !48, !taffo.info !49
  %0 = bitcast [20 x float]* %arraydecay2 to float*, !taffo.initweight !52, !taffo.target !48, !taffo.info !49
  call void @scale_2d.3(i32 noundef 20, i32 noundef 20, float* noundef %0, i32 noundef 2), !taffo.initweight !55, !taffo.target !48, !taffo.info !49, !taffo.originalCall !56, !taffo.constinfo !57
  call void @timer_start(), !taffo.constinfo !58
  %arraydecay3 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !51, !taffo.target !48, !taffo.info !49
  call void @kernel_seidel_2d.1(i32 noundef 10, i32 noundef 20, [20 x float]* noundef %arraydecay3), !taffo.initweight !52, !taffo.target !48, !taffo.info !49, !taffo.originalCall !59, !taffo.constinfo !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !65
  %cmp5 = icmp slt i32 %j.0, 20, !taffo.info !63
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.initweight !51, !taffo.target !48, !taffo.info !49
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !52, !taffo.target !48, !taffo.info !49
  %1 = load float, float* %arrayidx7, align 4, !taffo.initweight !55, !taffo.target !48, !taffo.info !49
  %arrayidx8 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx8, i32 0, i32 %j.0, !taffo.info !4
  store float %1, float* %arrayidx9, align 4, !taffo.initweight !67, !taffo.target !48, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1, !taffo.info !68, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !70

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !73

for.end12:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !54
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !40 !taffo.funinfo !41 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.initweight !47, !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !52, !taffo.info !75
  br i1 %cmp, label %for.body, label %for.end12, !taffo.initweight !55, !taffo.info !75

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !75
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.initweight !52, !taffo.info !75
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !55, !taffo.info !75

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !52, !taffo.info !75
  %add = add nsw i32 %j.0, 2, !taffo.initweight !52, !taffo.info !75, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !55, !taffo.info !75
  %mul = fmul float %conv, %conv6, !taffo.initweight !55, !taffo.info !75
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !67, !taffo.info !75, !taffo.constinfo !77
  %conv8 = sitofp i32 %n to float
  %div = fdiv float %add7, %conv8, !taffo.initweight !78, !taffo.info !75
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !52, !taffo.info !79
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !52, !taffo.info !79
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !55, !taffo.info !79
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !52, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !80

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.initweight !52, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !81

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.equivalentChild !82 {
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
  %add24 = fadd float %add20, %3, !taffo.initweight !52, !taffo.info !79
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
  %add45 = fadd float %add40, %8, !taffo.initweight !52, !taffo.info !79
  %add47 = fadd float %add24, %add45, !taffo.initweight !52, !taffo.info !79
  %div49 = fdiv float %add47, 9.000000e+00, !taffo.initweight !52, !taffo.info !79, !taffo.constinfo !83
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i32 %j.0
  store float %div49, float* %arrayidx51, align 4, !taffo.initweight !52, !taffo.info !79
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !86

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %inc53 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !87

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %inc56 = add nsw i32 %t.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !88

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !30 !taffo.funinfo !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !63
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !92
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !94
  %add = add nsw i32 %mul, %j.0, !taffo.info !94
  %rem = srem i32 %add, 20, !taffo.info !94, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !92
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !54
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !4
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !4
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !4
  %conv = fpext float %2 to double, !taffo.info !4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !60
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !96

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !97

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d.1(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !98 !taffo.funinfo !99 !taffo.sourceFunction !59 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc56, %for.inc55 ], !taffo.info !63
  %sub = sub nsw i32 %tsteps, 1, !taffo.info !84, !taffo.constinfo !27
  %cmp = icmp sle i32 %t.0, %sub, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc52, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc53, %for.inc52 ], !taffo.info !100
  %sub2 = sub nsw i32 %n, 2, !taffo.info !102, !taffo.constinfo !27
  %cmp3 = icmp sle i32 %i.0, %sub2, !taffo.info !92
  br i1 %cmp3, label %for.body4, label %for.end54

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 1, %for.body4 ], [ %inc, %for.inc ], !taffo.info !100
  %sub6 = sub nsw i32 %n, 2, !taffo.info !102, !taffo.constinfo !27
  %cmp7 = icmp sle i32 %j.0, %sub6, !taffo.info !92
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %sub10 = sub nsw i32 %i.0, 1, !taffo.info !94, !taffo.constinfo !27
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub10, !taffo.initweight !78, !taffo.info !49
  %sub11 = sub nsw i32 %j.0, 1, !taffo.info !94, !taffo.constinfo !27
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %sub11, !taffo.initweight !104, !taffo.info !49
  %0 = load float, float* %arrayidx12, align 4, !taffo.initweight !105, !taffo.info !49
  %sub13 = sub nsw i32 %i.0, 1, !taffo.info !94, !taffo.constinfo !27
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub13, !taffo.initweight !78, !taffo.info !49
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.initweight !104, !taffo.info !49
  %1 = load float, float* %arrayidx15, align 4, !taffo.initweight !105, !taffo.info !49
  %add = fadd float %0, %1, !taffo.initweight !106, !taffo.info !107
  %sub16 = sub nsw i32 %i.0, 1, !taffo.info !94, !taffo.constinfo !27
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub16, !taffo.initweight !78, !taffo.info !49
  %add18 = add nsw i32 %j.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i32 0, i32 %add18, !taffo.initweight !104, !taffo.info !49
  %2 = load float, float* %arrayidx19, align 4, !taffo.initweight !105, !taffo.info !49
  %add20 = fadd float %add, %2, !taffo.initweight !106, !taffo.info !109
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !78, !taffo.info !49
  %sub22 = sub nsw i32 %j.0, 1, !taffo.info !94, !taffo.constinfo !27
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx21, i32 0, i32 %sub22, !taffo.initweight !104, !taffo.info !49
  %3 = load float, float* %arrayidx23, align 4, !taffo.initweight !105, !taffo.info !49
  %add24 = fadd float %add20, %3, !taffo.initweight !52, !taffo.info !111
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !78, !taffo.info !49
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.initweight !104, !taffo.info !49
  %4 = load float, float* %arrayidx27, align 4, !taffo.initweight !105, !taffo.info !49
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !78, !taffo.info !49
  %add29 = add nsw i32 %j.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %add29, !taffo.initweight !104, !taffo.info !49
  %5 = load float, float* %arrayidx30, align 4, !taffo.initweight !105, !taffo.info !49
  %add31 = fadd float %4, %5, !taffo.initweight !106, !taffo.info !107
  %add32 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add32, !taffo.initweight !78, !taffo.info !49
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !94, !taffo.constinfo !27
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %sub34, !taffo.initweight !104, !taffo.info !49
  %6 = load float, float* %arrayidx35, align 4, !taffo.initweight !105, !taffo.info !49
  %add36 = fadd float %add31, %6, !taffo.initweight !106, !taffo.info !109
  %add37 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add37, !taffo.initweight !78, !taffo.info !49
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i32 0, i32 %j.0, !taffo.initweight !104, !taffo.info !49
  %7 = load float, float* %arrayidx39, align 4, !taffo.initweight !105, !taffo.info !49
  %add40 = fadd float %add36, %7, !taffo.initweight !106, !taffo.info !113
  %add41 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add41, !taffo.initweight !78, !taffo.info !49
  %add43 = add nsw i32 %j.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx42, i32 0, i32 %add43, !taffo.initweight !104, !taffo.info !49
  %8 = load float, float* %arrayidx44, align 4, !taffo.initweight !105, !taffo.info !49
  %add45 = fadd float %add40, %8, !taffo.initweight !52, !taffo.info !114
  %add47 = fadd float %add24, %add45, !taffo.initweight !52, !taffo.info !116
  %div49 = fdiv float %add47, 9.000000e+00, !taffo.initweight !52, !taffo.info !118, !taffo.constinfo !83
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !78, !taffo.info !49
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i32 %j.0, !taffo.initweight !104, !taffo.info !49
  store float %div49, float* %arrayidx51, align 4, !taffo.initweight !52, !taffo.info !79
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !119

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %inc53 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !120

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %inc56 = add nsw i32 %t.0, 1, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !121

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !122 !taffo.funinfo !123 !taffo.sourceFunction !53 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.initweight !47, !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !52, !taffo.info !124
  br i1 %cmp, label %for.body, label %for.end12, !taffo.initweight !55, !taffo.info !75

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !75
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.initweight !52, !taffo.info !124
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !55, !taffo.info !75

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !52, !taffo.info !75
  %add = add nsw i32 %j.0, 2, !taffo.initweight !52, !taffo.info !125, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !55, !taffo.info !125
  %mul = fmul float %conv, %conv6, !taffo.initweight !55, !taffo.info !127
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !67, !taffo.info !129, !taffo.constinfo !77
  %conv8 = sitofp i32 %n to float, !taffo.info !90
  %div = fdiv float %add7, %conv8, !taffo.initweight !78, !taffo.info !131
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !52, !taffo.info !118
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !52, !taffo.info !118
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !55, !taffo.info !79
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !52, !taffo.info !133, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !135

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.initweight !52, !taffo.info !133, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !136

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !137 !taffo.funinfo !138 !taffo.sourceFunction !56 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !63
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !92
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !94
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !104, !taffo.info !49
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !105, !taffo.info !49
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !106, !taffo.info !49
  %conv = sitofp i32 %factor to float, !taffo.info !25
  %mul = fmul float %1, %conv, !taffo.initweight !139, !taffo.info !107
  %2 = mul nsw i32 %i.0, %m, !taffo.info !94
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !104, !taffo.info !49
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !105, !taffo.info !49
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !106, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !140

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !92, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !141

for.end9:                                         ; preds = %for.cond
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
!5 = !{double 0.000000e+00, double 0x40440CCCBC05D52C}
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
!30 = !{i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false}
!32 = !{i32 -1, i32 -1, i32 -1}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = distinct !{!34, !29}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = !{void (i32, i32, float*, i32)* @scale_2d.3}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!41 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = !{}
!46 = !{i1 true}
!47 = !{i32 0}
!48 = !{!"A"}
!49 = !{i1 false, !50, i1 false, i2 -1}
!50 = !{double 2.000000e-01, double 0x40440CCCBC05D52C}
!51 = !{i32 1}
!52 = !{i32 2}
!53 = !{void (i32, [20 x float]*)* @init_array}
!54 = !{i1 false, i1 false, i1 false}
!55 = !{i32 3}
!56 = !{void (i32, i32, float*, i32)* @scale_2d}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{i1 false}
!59 = !{void (i32, i32, [20 x float]*)* @kernel_seidel_2d}
!60 = !{i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 2.100000e+01}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 0.000000e+00, double 1.000000e+00}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 4.410000e+02}
!67 = !{i32 4}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 1.000000e+00, double 4.410000e+02}
!70 = distinct !{!70, !29}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 2.100000e+01}
!73 = distinct !{!73, !29}
!74 = !{void (i32, [20 x float]*)* @init_array.2}
!75 = !{i1 false, !76, i1 false, i2 -1}
!76 = !{double -2.000000e+01, double 2.000000e+01}
!77 = !{i1 false, !25}
!78 = !{i32 5}
!79 = !{i1 false, i1 false, i1 false, i2 1}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = !{void (i32, i32, [20 x float]*)* @kernel_seidel_2d.1}
!83 = !{i1 false, !84}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 9.000000e+00, double 9.000000e+00}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = !{i32 1, !90, i32 1, !4}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 2.000000e+01, double 2.000000e+01}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 1.000000e+00, double 1.000000e+00}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 0.000000e+00, double 0.000000e+00}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !29}
!98 = !{i32 -1, i32 -1, i32 2}
!99 = !{i32 1, !22, i32 1, !90, i32 1, !49}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 1.000000e+00, double 2.000000e+00}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 1.800000e+01, double 1.800000e+01}
!104 = !{i32 6}
!105 = !{i32 7}
!106 = !{i32 8}
!107 = !{i1 false, !108, i1 false, i2 -1}
!108 = !{double 4.000000e-01, double 0x40540CCCBC05D52C}
!109 = !{i1 false, !110, i1 false, i2 -1}
!110 = !{double 0x3FE3333333333334, double 0x405E13331A08BFC2}
!111 = !{i1 false, !112, i1 false, i2 1}
!112 = !{double 8.000000e-01, double 0x40640CCCBC05D52C}
!113 = !{i1 false, !112, i1 false, i2 -1}
!114 = !{i1 false, !115, i1 false, i2 1}
!115 = !{double 1.000000e+00, double 0x40690FFFEB074A77}
!116 = !{i1 false, !117, i1 false, i2 1}
!117 = !{double 1.800000e+00, double 0x40768E6653868FD2}
!118 = !{i1 false, !50, i1 false, i2 1}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !29}
!121 = distinct !{!121, !29}
!122 = !{i32 -1, i32 2}
!123 = !{i32 1, !90, i32 1, !49}
!124 = !{i1 false, !64, i1 false, i2 -1}
!125 = !{i1 false, !126, i1 false, i2 -1}
!126 = !{double -1.800000e+01, double 2.200000e+01}
!127 = !{i1 false, !128, i1 false, i2 -1}
!128 = !{double -4.400000e+02, double 4.400000e+02}
!129 = !{i1 false, !130, i1 false, i2 -1}
!130 = !{double -4.380000e+02, double 4.420000e+02}
!131 = !{i1 false, !132, i1 false, i2 -1}
!132 = !{double -2.190000e+01, double 2.210000e+01}
!133 = !{i1 false, !134, i1 false, i2 -1}
!134 = !{double -1.900000e+01, double 2.100000e+01}
!135 = distinct !{!135, !29}
!136 = distinct !{!136, !29}
!137 = !{i32 -1, i32 -1, i32 3, i32 -1}
!138 = !{i32 1, !90, i32 1, !90, i32 1, !49, i32 1, !25}
!139 = !{i32 9}
!140 = distinct !{!140, !29}
!141 = distinct !{!141, !29}
