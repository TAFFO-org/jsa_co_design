; ModuleID = './build/bin/fixed/lu/8/lu-standard-1024-fixed-8.out.ll.2.taffotmp.ll'
source_filename = "./sources/lu.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [49 x i8] c"target('A') scalar(range(0.1,8368.639648) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [15 x i8] c"./sources/lu.c\00", section "llvm.metadata", !taffo.info !2
@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !4
@.str.2 = private unnamed_addr constant [23 x i8] c"scalar(range(-20, 20))\00", section "llvm.metadata", !taffo.info !6
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
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !47, !taffo.info !48, !taffo.target !50
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !51, !taffo.info !48, !taffo.target !50
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !51, !taffo.info !48, !taffo.target !50
  call void @init_array.2(i32 noundef 20, [20 x float]* noundef %arraydecay), !taffo.initweight !52, !taffo.info !48, !taffo.target !50, !taffo.originalCall !53, !taffo.constinfo !54
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !51, !taffo.info !48, !taffo.target !50
  %0 = bitcast [20 x float]* %arraydecay2 to float*, !taffo.initweight !52, !taffo.info !48, !taffo.target !50
  call void @scale_2d.3(i32 noundef 20, i32 noundef 20, float* noundef %0, i32 noundef 1024), !taffo.initweight !55, !taffo.info !48, !taffo.target !50, !taffo.originalCall !56, !taffo.constinfo !57
  call void @timer_start(), !taffo.constinfo !58
  %arraydecay3 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !51, !taffo.info !48, !taffo.target !50
  call void @kernel_lu.1(i32 noundef 20, [20 x float]* noundef %arraydecay3), !taffo.initweight !52, !taffo.info !48, !taffo.target !50, !taffo.originalCall !59, !taffo.constinfo !54
  call void @timer_stop(), !taffo.constinfo !58
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !62
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !60
  %cmp5 = icmp sle i32 %j.0, %i.0, !taffo.info !62
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.initweight !51, !taffo.info !48, !taffo.target !50
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !52, !taffo.info !48, !taffo.target !50
  %1 = load float, float* %arrayidx7, align 4, !taffo.initweight !55, !taffo.info !48, !taffo.target !50
  %arrayidx8 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx8, i32 0, i32 %j.0, !taffo.info !4
  store float %1, float* %arrayidx9, align 4, !taffo.initweight !64, !taffo.info !48, !taffo.target !50
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1, !taffo.info !65, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !67

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !68

for.end12:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !54
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !40 !taffo.funinfo !41 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !69 {
entry:
  %B = alloca [20 x [20 x float]], align 4, !taffo.initweight !47, !taffo.info !70
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.initweight !47, !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !52, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end22, !taffo.initweight !55, !taffo.info !71

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !71
  %cmp4 = icmp sle i32 %j.0, %i.0, !taffo.initweight !52, !taffo.info !71
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !55, !taffo.info !71

for.body5:                                        ; preds = %for.cond3
  %sub = sub nsw i32 0, %j.0, !taffo.initweight !52, !taffo.info !71, !taffo.constinfo !27
  %rem = srem i32 %sub, %n, !taffo.initweight !55, !taffo.info !71
  %conv = sitofp i32 %rem to float, !taffo.initweight !64, !taffo.info !71
  %conv6 = sitofp i32 %n to float
  %div = fdiv float %conv, %conv6, !taffo.initweight !73, !taffo.info !71
  %add = fadd float %div, 1.000000e+00, !taffo.initweight !73, !taffo.info !70, !taffo.constinfo !74
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !52, !taffo.info !70
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !52, !taffo.info !70
  store float %add, float* %arrayidx7, align 4, !taffo.initweight !55, !taffo.info !70
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !52, !taffo.info !71, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !77

for.end:                                          ; preds = %for.cond3
  %add8 = add nsw i32 %i.0, 1, !taffo.initweight !52, !taffo.info !71, !taffo.constinfo !27
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %j.1 = phi i32 [ %add8, %for.end ], [ %inc16, %for.inc15 ], !taffo.initweight !47, !taffo.info !71
  %cmp10 = icmp slt i32 %j.1, %n, !taffo.initweight !52, !taffo.info !71
  br i1 %cmp10, label %for.body12, label %for.end17, !taffo.initweight !55, !taffo.info !71

for.body12:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !52, !taffo.info !70
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.1, !taffo.initweight !52, !taffo.info !70
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !55, !taffo.info !70, !taffo.constinfo !78
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %inc16 = add nsw i32 %j.1, 1, !taffo.initweight !52, !taffo.info !71, !taffo.constinfo !27
  br label %for.cond9, !llvm.loop !81

for.end17:                                        ; preds = %for.cond9
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !52, !taffo.info !70
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %i.0, !taffo.initweight !52, !taffo.info !70
  store float 1.000000e+00, float* %arrayidx19, align 4, !taffo.initweight !55, !taffo.info !70, !taffo.constinfo !82
  br label %for.inc20

for.inc20:                                        ; preds = %for.end17
  %inc21 = add nsw i32 %i.0, 1, !taffo.initweight !52, !taffo.info !71, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !83

for.end22:                                        ; preds = %for.cond
  %B23 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.initweight !51, !taffo.info !70
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end22
  %r.0 = phi i32 [ 0, %for.end22 ], [ %inc38, %for.inc37 ]
  %cmp25 = icmp slt i32 %r.0, %n
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %for.body27
  %s.0 = phi i32 [ 0, %for.body27 ], [ %inc35, %for.inc34 ]
  %cmp29 = icmp slt i32 %s.0, %n
  br i1 %cmp29, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %r.0, !taffo.initweight !51, !taffo.info !70
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i32 0, i32 %s.0, !taffo.initweight !52, !taffo.info !70
  store float 0.000000e+00, float* %arrayidx33, align 4, !taffo.initweight !55, !taffo.info !70, !taffo.constinfo !78
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %inc35 = add nsw i32 %s.0, 1, !taffo.constinfo !27
  br label %for.cond28, !llvm.loop !84

for.end36:                                        ; preds = %for.cond28
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %inc38 = add nsw i32 %r.0, 1, !taffo.constinfo !27
  br label %for.cond24, !llvm.loop !85

for.end39:                                        ; preds = %for.cond24
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc65, %for.end39
  %t.0 = phi i32 [ 0, %for.end39 ], [ %inc66, %for.inc65 ]
  %cmp41 = icmp slt i32 %t.0, %n
  br i1 %cmp41, label %for.body43, label %for.end67

for.body43:                                       ; preds = %for.cond40
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc62, %for.body43
  %r.1 = phi i32 [ 0, %for.body43 ], [ %inc63, %for.inc62 ]
  %cmp45 = icmp slt i32 %r.1, %n
  br i1 %cmp45, label %for.body47, label %for.end64

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc59, %for.body47
  %s.1 = phi i32 [ 0, %for.body47 ], [ %inc60, %for.inc59 ]
  %cmp49 = icmp slt i32 %s.1, %n
  br i1 %cmp49, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.1
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %t.0
  %0 = load float, float* %arrayidx53, align 4
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %s.1
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx54, i32 0, i32 %t.0
  %1 = load float, float* %arrayidx55, align 4
  %mul = fmul float %0, %1
  %arrayidx56 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %r.1, !taffo.initweight !51, !taffo.info !70
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx56, i32 0, i32 %s.1, !taffo.initweight !52, !taffo.info !70
  %2 = load float, float* %arrayidx57, align 4, !taffo.initweight !55, !taffo.info !70
  %add58 = fadd float %2, %mul, !taffo.initweight !64, !taffo.info !70
  store float %add58, float* %arrayidx57, align 4, !taffo.initweight !55, !taffo.info !70
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %inc60 = add nsw i32 %s.1, 1, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !86

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %inc63 = add nsw i32 %r.1, 1, !taffo.constinfo !27
  br label %for.cond44, !llvm.loop !87

for.end64:                                        ; preds = %for.cond44
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %inc66 = add nsw i32 %t.0, 1, !taffo.constinfo !27
  br label %for.cond40, !llvm.loop !88

for.end67:                                        ; preds = %for.cond40
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc83, %for.end67
  %r.2 = phi i32 [ 0, %for.end67 ], [ %inc84, %for.inc83 ]
  %cmp69 = icmp slt i32 %r.2, %n
  br i1 %cmp69, label %for.body71, label %for.end85

for.body71:                                       ; preds = %for.cond68
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc80, %for.body71
  %s.2 = phi i32 [ 0, %for.body71 ], [ %inc81, %for.inc80 ]
  %cmp73 = icmp slt i32 %s.2, %n
  br i1 %cmp73, label %for.body75, label %for.end82

for.body75:                                       ; preds = %for.cond72
  %arrayidx76 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %r.2, !taffo.initweight !51, !taffo.info !70
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %s.2, !taffo.initweight !52, !taffo.info !70
  %3 = load float, float* %arrayidx77, align 4, !taffo.initweight !55, !taffo.info !70
  %arrayidx78 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.2
  %arrayidx79 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx78, i32 0, i32 %s.2
  store float %3, float* %arrayidx79, align 4, !taffo.initweight !64, !taffo.info !70
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %inc81 = add nsw i32 %s.2, 1, !taffo.constinfo !27
  br label %for.cond72, !llvm.loop !89

for.end82:                                        ; preds = %for.cond72
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %inc84 = add nsw i32 %r.2, 1, !taffo.constinfo !27
  br label %for.cond68, !llvm.loop !90

for.end85:                                        ; preds = %for.cond68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !91 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ]
  %cmp2 = icmp slt i32 %j.0, %i.0
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %j.0
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %k.0
  %0 = load float, float* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.0
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %j.0
  %1 = load float, float* %arrayidx10, align 4
  %mul = fmul float %0, %1, !taffo.initweight !52, !taffo.info !70
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx12, align 4
  %sub = fsub float %2, %mul, !taffo.initweight !52, !taffo.info !70
  store float %sub, float* %arrayidx12, align 4, !taffo.initweight !55, !taffo.info !70
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !92

for.end:                                          ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.0
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.0
  %3 = load float, float* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %j.0
  %4 = load float, float* %arrayidx16, align 4
  %div = fdiv float %4, %3
  store float %div, float* %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !93

for.end19:                                        ; preds = %for.cond1
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ]
  %cmp21 = icmp slt i32 %j.1, %n
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc37, %for.inc36 ]
  %cmp24 = icmp slt i32 %k.1, %i.0
  br i1 %cmp24, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond23
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %k.1
  %5 = load float, float* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.1
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %j.1
  %6 = load float, float* %arrayidx31, align 4
  %mul32 = fmul float %5, %6, !taffo.initweight !52, !taffo.info !70
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %j.1
  %7 = load float, float* %arrayidx34, align 4
  %sub35 = fsub float %7, %mul32, !taffo.initweight !52, !taffo.info !70
  store float %sub35, float* %arrayidx34, align 4, !taffo.initweight !55, !taffo.info !70
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %inc37 = add nsw i32 %k.1, 1, !taffo.constinfo !27
  br label %for.cond23, !llvm.loop !94

for.end38:                                        ; preds = %for.cond23
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %inc40 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !95

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !96

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !30 !taffo.funinfo !97 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !75
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !62
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !75
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !79
  %add = add nsw i32 %mul, %j.0, !taffo.info !79
  %rem = srem i32 %add, 20, !taffo.info !79, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !75
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
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !100
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !101

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !102

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_lu.1(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !103 !taffo.funinfo !104 !taffo.sourceFunction !59 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !75
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !62
  %cmp2 = icmp slt i32 %j.0, %i.0, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !62
  %cmp5 = icmp slt i32 %k.0, %j.0, !taffo.info !79
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !73, !taffo.info !48
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %k.0, !taffo.initweight !105, !taffo.info !48
  %0 = load float, float* %arrayidx8, align 4, !taffo.initweight !106, !taffo.info !48
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.0, !taffo.initweight !73, !taffo.info !48
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.initweight !105, !taffo.info !48
  %1 = load float, float* %arrayidx10, align 4, !taffo.initweight !106, !taffo.info !48
  %mul = fmul float %0, %1, !taffo.initweight !52, !taffo.info !107
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !73, !taffo.info !48
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.initweight !105, !taffo.info !48
  %2 = load float, float* %arrayidx12, align 4, !taffo.initweight !106, !taffo.info !48
  %sub = fsub float %2, %mul, !taffo.initweight !52, !taffo.info !109
  store float %sub, float* %arrayidx12, align 4, !taffo.initweight !55, !taffo.info !70
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !111

for.end:                                          ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.0, !taffo.initweight !73, !taffo.info !48
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !105, !taffo.info !48
  %3 = load float, float* %arrayidx14, align 4, !taffo.initweight !106, !taffo.info !48
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !73, !taffo.info !48
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.initweight !105, !taffo.info !48
  %4 = load float, float* %arrayidx16, align 4, !taffo.initweight !106, !taffo.info !48
  %div = fdiv float %4, %3, !taffo.initweight !112, !taffo.info !113
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !106, !taffo.info !48
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !115

for.end19:                                        ; preds = %for.cond1
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !62
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !75
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc37, %for.inc36 ], !taffo.info !62
  %cmp24 = icmp slt i32 %k.1, %i.0, !taffo.info !79
  br i1 %cmp24, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond23
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !73, !taffo.info !48
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %k.1, !taffo.initweight !105, !taffo.info !48
  %5 = load float, float* %arrayidx29, align 4, !taffo.initweight !106, !taffo.info !48
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.1, !taffo.initweight !73, !taffo.info !48
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %j.1, !taffo.initweight !105, !taffo.info !48
  %6 = load float, float* %arrayidx31, align 4, !taffo.initweight !106, !taffo.info !48
  %mul32 = fmul float %5, %6, !taffo.initweight !52, !taffo.info !107
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !73, !taffo.info !48
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.initweight !105, !taffo.info !48
  %7 = load float, float* %arrayidx34, align 4, !taffo.initweight !106, !taffo.info !48
  %sub35 = fsub float %7, %mul32, !taffo.initweight !52, !taffo.info !109
  store float %sub35, float* %arrayidx34, align 4, !taffo.initweight !55, !taffo.info !70
  br label %for.inc36

for.inc36:                                        ; preds = %for.body25
  %inc37 = add nsw i32 %k.1, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond23, !llvm.loop !116

for.end38:                                        ; preds = %for.cond23
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !117

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !118

for.end44:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !103 !taffo.funinfo !104 !taffo.sourceFunction !53 {
entry:
  %B = alloca [20 x [20 x float]], align 4, !taffo.initweight !47, !taffo.info !119
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.initweight !47, !taffo.info !121
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !52, !taffo.info !123
  br i1 %cmp, label %for.body, label %for.end22, !taffo.initweight !55, !taffo.info !71

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !121
  %cmp4 = icmp sle i32 %j.0, %i.0, !taffo.initweight !52, !taffo.info !123
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !55, !taffo.info !71

for.body5:                                        ; preds = %for.cond3
  %sub = sub nsw i32 0, %j.0, !taffo.initweight !52, !taffo.info !71, !taffo.constinfo !27
  %rem = srem i32 %sub, %n, !taffo.initweight !55, !taffo.info !124
  %conv = sitofp i32 %rem to float, !taffo.initweight !64, !taffo.info !124
  %conv6 = sitofp i32 %n to float, !taffo.info !98
  %div = fdiv float %conv, %conv6, !taffo.initweight !73, !taffo.info !126
  %add = fadd float %div, 1.000000e+00, !taffo.initweight !73, !taffo.info !128, !taffo.constinfo !74
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !52, !taffo.info !130
  %arrayidx7 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !52, !taffo.info !130
  store float %add, float* %arrayidx7, align 4, !taffo.initweight !55, !taffo.info !70
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !52, !taffo.info !131, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !133

for.end:                                          ; preds = %for.cond3
  %add8 = add nsw i32 %i.0, 1, !taffo.initweight !52, !taffo.info !131, !taffo.constinfo !27
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %j.1 = phi i32 [ %add8, %for.end ], [ %inc16, %for.inc15 ], !taffo.initweight !47, !taffo.info !134
  %cmp10 = icmp slt i32 %j.1, %n, !taffo.initweight !52, !taffo.info !123
  br i1 %cmp10, label %for.body12, label %for.end17, !taffo.initweight !55, !taffo.info !71

for.body12:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !52, !taffo.info !130
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.1, !taffo.initweight !52, !taffo.info !130
  store float 0.000000e+00, float* %arrayidx14, align 4, !taffo.initweight !55, !taffo.info !70, !taffo.constinfo !78
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %inc16 = add nsw i32 %j.1, 1, !taffo.initweight !52, !taffo.info !136, !taffo.constinfo !27
  br label %for.cond9, !llvm.loop !138

for.end17:                                        ; preds = %for.cond9
  %arrayidx18 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !52, !taffo.info !130
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx18, i32 0, i32 %i.0, !taffo.initweight !52, !taffo.info !130
  store float 1.000000e+00, float* %arrayidx19, align 4, !taffo.initweight !55, !taffo.info !70, !taffo.constinfo !82
  br label %for.inc20

for.inc20:                                        ; preds = %for.end17
  %inc21 = add nsw i32 %i.0, 1, !taffo.initweight !52, !taffo.info !131, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !139

for.end22:                                        ; preds = %for.cond
  %B23 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.initweight !51, !taffo.info !119
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end22
  %r.0 = phi i32 [ 0, %for.end22 ], [ %inc38, %for.inc37 ], !taffo.info !62
  %cmp25 = icmp slt i32 %r.0, %n, !taffo.info !75
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond24
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %for.body27
  %s.0 = phi i32 [ 0, %for.body27 ], [ %inc35, %for.inc34 ], !taffo.info !62
  %cmp29 = icmp slt i32 %s.0, %n, !taffo.info !75
  br i1 %cmp29, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %r.0, !taffo.initweight !51, !taffo.info !119
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx32, i32 0, i32 %s.0, !taffo.initweight !52, !taffo.info !119
  store float 0.000000e+00, float* %arrayidx33, align 4, !taffo.initweight !55, !taffo.info !70, !taffo.constinfo !78
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %inc35 = add nsw i32 %s.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond28, !llvm.loop !140

for.end36:                                        ; preds = %for.cond28
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %inc38 = add nsw i32 %r.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond24, !llvm.loop !141

for.end39:                                        ; preds = %for.cond24
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc65, %for.end39
  %t.0 = phi i32 [ 0, %for.end39 ], [ %inc66, %for.inc65 ], !taffo.info !62
  %cmp41 = icmp slt i32 %t.0, %n, !taffo.info !75
  br i1 %cmp41, label %for.body43, label %for.end67

for.body43:                                       ; preds = %for.cond40
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc62, %for.body43
  %r.1 = phi i32 [ 0, %for.body43 ], [ %inc63, %for.inc62 ], !taffo.info !62
  %cmp45 = icmp slt i32 %r.1, %n, !taffo.info !75
  br i1 %cmp45, label %for.body47, label %for.end64

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc59, %for.body47
  %s.1 = phi i32 [ 0, %for.body47 ], [ %inc60, %for.inc59 ], !taffo.info !62
  %cmp49 = icmp slt i32 %s.1, %n, !taffo.info !75
  br i1 %cmp49, label %for.body51, label %for.end61

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.1, !taffo.initweight !73, !taffo.info !48
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %t.0, !taffo.initweight !105, !taffo.info !48
  %0 = load float, float* %arrayidx53, align 4, !taffo.initweight !106, !taffo.info !48
  %arrayidx54 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %s.1, !taffo.initweight !73, !taffo.info !48
  %arrayidx55 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx54, i32 0, i32 %t.0, !taffo.initweight !105, !taffo.info !48
  %1 = load float, float* %arrayidx55, align 4, !taffo.initweight !106, !taffo.info !48
  %mul = fmul float %0, %1, !taffo.initweight !112, !taffo.info !142
  %arrayidx56 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %r.1, !taffo.initweight !51, !taffo.info !119
  %arrayidx57 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx56, i32 0, i32 %s.1, !taffo.initweight !52, !taffo.info !119
  %2 = load float, float* %arrayidx57, align 4, !taffo.initweight !55, !taffo.info !143
  %add58 = fadd float %2, %mul, !taffo.initweight !64, !taffo.info !107
  store float %add58, float* %arrayidx57, align 4, !taffo.initweight !55, !taffo.info !70
  br label %for.inc59

for.inc59:                                        ; preds = %for.body51
  %inc60 = add nsw i32 %s.1, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !144

for.end61:                                        ; preds = %for.cond48
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %inc63 = add nsw i32 %r.1, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond44, !llvm.loop !145

for.end64:                                        ; preds = %for.cond44
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %inc66 = add nsw i32 %t.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond40, !llvm.loop !146

for.end67:                                        ; preds = %for.cond40
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc83, %for.end67
  %r.2 = phi i32 [ 0, %for.end67 ], [ %inc84, %for.inc83 ], !taffo.info !62
  %cmp69 = icmp slt i32 %r.2, %n, !taffo.info !75
  br i1 %cmp69, label %for.body71, label %for.end85

for.body71:                                       ; preds = %for.cond68
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc80, %for.body71
  %s.2 = phi i32 [ 0, %for.body71 ], [ %inc81, %for.inc80 ], !taffo.info !62
  %cmp73 = icmp slt i32 %s.2, %n, !taffo.info !75
  br i1 %cmp73, label %for.body75, label %for.end82

for.body75:                                       ; preds = %for.cond72
  %arrayidx76 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 %r.2, !taffo.initweight !51, !taffo.info !119
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %s.2, !taffo.initweight !52, !taffo.info !119
  %3 = load float, float* %arrayidx77, align 4, !taffo.initweight !55, !taffo.info !119
  %arrayidx78 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.2, !taffo.initweight !73, !taffo.info !48
  %arrayidx79 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx78, i32 0, i32 %s.2, !taffo.initweight !105, !taffo.info !48
  store float %3, float* %arrayidx79, align 4, !taffo.initweight !64, !taffo.info !70
  br label %for.inc80

for.inc80:                                        ; preds = %for.body75
  %inc81 = add nsw i32 %s.2, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond72, !llvm.loop !147

for.end82:                                        ; preds = %for.cond72
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %inc84 = add nsw i32 %r.2, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond68, !llvm.loop !148

for.end85:                                        ; preds = %for.cond68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !149 !taffo.funinfo !150 !taffo.sourceFunction !56 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !75
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !62
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !75
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !79
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !105, !taffo.info !48
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !106, !taffo.info !48
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !112, !taffo.info !48
  %conv = sitofp i32 %factor to float, !taffo.info !151
  %mul = fmul float %1, %conv, !taffo.initweight !153, !taffo.info !154
  %2 = mul nsw i32 %i.0, %m, !taffo.info !79
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !105, !taffo.info !48
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !106, !taffo.info !48
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !112, !taffo.info !48
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !156

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !75, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !157

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
!5 = !{double 0.000000e+00, double 0x40C05851DFFC547A}
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
!48 = !{i1 false, !49, i1 false, i2 -1}
!49 = !{double 1.000000e-01, double 0x40C05851DFFC547A}
!50 = !{!"A"}
!51 = !{i32 1}
!52 = !{i32 2}
!53 = !{void (i32, [20 x float]*)* @init_array}
!54 = !{i1 false, i1 false, i1 false}
!55 = !{i32 3}
!56 = !{void (i32, i32, float*, i32)* @scale_2d}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{i1 false}
!59 = !{void (i32, [20 x float]*)* @kernel_lu}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 2.100000e+01}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 1.000000e+00}
!64 = !{i32 4}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+00, double 2.100000e+01}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !29}
!69 = !{void (i32, [20 x float]*)* @init_array.2}
!70 = !{i1 false, i1 false, i1 false, i2 1}
!71 = !{i1 false, !72, i1 false, i2 1}
!72 = !{double -2.000000e+01, double 2.000000e+01}
!73 = !{i32 5}
!74 = !{i1 false, !75}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 1.000000e+00, double 1.000000e+00}
!77 = distinct !{!77, !29}
!78 = !{!79, i1 false}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 0.000000e+00, double 0.000000e+00}
!81 = distinct !{!81, !29}
!82 = !{!75, i1 false}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = !{void (i32, [20 x float]*)* @kernel_lu.1}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !29}
!96 = distinct !{!96, !29}
!97 = !{i32 1, !98, i32 1, !4}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 2.000000e+01, double 2.000000e+01}
!100 = !{i1 false, i1 false, i1 false, i1 false}
!101 = distinct !{!101, !29}
!102 = distinct !{!102, !29}
!103 = !{i32 -1, i32 2}
!104 = !{i32 1, !98, i32 1, !48}
!105 = !{i32 6}
!106 = !{i32 7}
!107 = !{i1 false, !108, i1 false, i2 1}
!108 = !{double 0x3F847AE147AE147C, double 0x4190B28B463B78B0}
!109 = !{i1 false, !110, i1 false, i2 1}
!110 = !{double 0xC190B28B45D5124A, double 0x40C05850984E3FFF}
!111 = distinct !{!111, !29}
!112 = !{i32 8}
!113 = !{i1 false, !114, i1 false, i2 -1}
!114 = !{double 0x3EE90F455FEACCE2, double 0x40F46E6657FB6998}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double 0.000000e+00, double 0x4190B28B463B78B0}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double -2.000000e+01, double 2.100000e+01}
!123 = !{i1 false, !63, i1 false, i2 1}
!124 = !{i1 false, !125, i1 false, i2 1}
!125 = !{double -1.900000e+01, double 1.900000e+01}
!126 = !{i1 false, !127, i1 false, i2 1}
!127 = !{double 0xBFEE666666666666, double 0x3FEE666666666666}
!128 = !{i1 false, !129, i1 false, i2 1}
!129 = !{double 0x3FA99999999999A0, double 1.950000e+00}
!130 = !{i1 false, !49, i1 false, i2 1}
!131 = !{i1 false, !132, i1 false, i2 1}
!132 = !{double -1.900000e+01, double 2.100000e+01}
!133 = distinct !{!133, !29}
!134 = !{i1 false, !135, i1 false, i2 1}
!135 = !{double -2.000000e+01, double 2.200000e+01}
!136 = !{i1 false, !137, i1 false, i2 1}
!137 = !{double -1.900000e+01, double 2.200000e+01}
!138 = distinct !{!138, !29}
!139 = distinct !{!139, !29}
!140 = distinct !{!140, !29}
!141 = distinct !{!141, !29}
!142 = !{i1 false, !108, i1 false, i2 -1}
!143 = !{i1 false, !80, i1 false, i2 1}
!144 = distinct !{!144, !29}
!145 = distinct !{!145, !29}
!146 = distinct !{!146, !29}
!147 = distinct !{!147, !29}
!148 = distinct !{!148, !29}
!149 = !{i32 -1, i32 -1, i32 3, i32 -1}
!150 = !{i32 1, !98, i32 1, !98, i32 1, !48, i32 1, !151}
!151 = !{i1 false, !152, i1 false, i2 0}
!152 = !{double 1.024000e+03, double 1.024000e+03}
!153 = !{i32 9}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double 1.024000e+02, double 0x41605851DFFC547A}
!156 = distinct !{!156, !29}
!157 = distinct !{!157, !29}
