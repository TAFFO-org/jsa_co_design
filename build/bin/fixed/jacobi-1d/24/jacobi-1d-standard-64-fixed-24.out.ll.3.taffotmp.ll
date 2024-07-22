; ModuleID = './build/bin/fixed/jacobi-1d/24/jacobi-1d-standard-64-fixed-24.out.ll.2.taffotmp.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [51 x i8] c"target('A') scalar(range(8.533334,68.26667) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-1d.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [36 x i8] c"scalar(range(12.8,72.533333) final)\00", section "llvm.metadata", !taffo.info !4
@A_float = dso_local global [15 x float] zeroinitializer, align 4, !taffo.info !6
@.str.3 = private unnamed_addr constant [29 x i8] c"scalar(range(-15, 15) final)\00", section "llvm.metadata", !taffo.info !4
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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.equivalentChild !34 {
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
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !36 !taffo.funinfo !37 {
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
  %A = alloca [15 x float], align 4, !taffo.initweight !47, !taffo.target !48, !taffo.info !49
  %B = alloca [15 x float], align 4, !taffo.initweight !47, !taffo.info !51
  %A1 = bitcast [15 x float]* %A to i8*, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  %B2 = bitcast [15 x float]* %B to i8*, !taffo.initweight !53, !taffo.info !51
  %arraydecay = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  %arraydecay3 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !53, !taffo.info !51
  call void @init_array.4(i32 noundef 15, float* noundef %arraydecay, float* noundef %arraydecay3), !taffo.initweight !54, !taffo.target !48, !taffo.info !49, !taffo.originalCall !55, !taffo.constinfo !56
  %arraydecay4 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  call void @scale_1d.1(i32 noundef 15, float* noundef %arraydecay4, i32 noundef 64), !taffo.initweight !54, !taffo.target !48, !taffo.info !49, !taffo.originalCall !57, !taffo.constinfo !56
  %arraydecay5 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !53, !taffo.info !51
  call void @scale_1d.3(i32 noundef 15, float* noundef %arraydecay5, i32 noundef 64), !taffo.initweight !54, !taffo.info !51, !taffo.originalCall !57, !taffo.constinfo !56
  call void @timer_start(), !taffo.constinfo !58
  %arraydecay6 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  %arraydecay7 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.initweight !53, !taffo.info !51
  call void @kernel_jacobi_1d.2(i32 noundef 10, i32 noundef 15, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.initweight !54, !taffo.target !48, !taffo.info !49, !taffo.originalCall !59, !taffo.constinfo !60
  call void @timer_stop(), !taffo.constinfo !58
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 %i.0, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !54, !taffo.target !48, !taffo.info !49
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i32 0, i32 %i.0, !taffo.info !6
  store float %0, float* %arrayidx8, align 4, !taffo.initweight !65, !taffo.target !48, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 15, float* noundef getelementptr inbounds ([15 x float], [15 x float]* @A_float, i32 0, i32 0)), !taffo.constinfo !69
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !40 !taffo.funinfo !41 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.equivalentChild !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !54, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !65, !taffo.info !71

for.body:                                         ; preds = %for.cond
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !54, !taffo.info !71
  %add = fadd float %conv, 2.000000e+00, !taffo.initweight !65, !taffo.info !71, !taffo.constinfo !73
  %conv2 = sitofp i32 %n to float
  %div = fdiv float %add, %conv2, !taffo.initweight !74, !taffo.info !71
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.initweight !54, !taffo.info !75
  store float %div, float* %arrayidx, align 4, !taffo.initweight !65, !taffo.info !75
  %conv3 = sitofp i32 %i.0 to float, !taffo.initweight !54, !taffo.info !71
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.initweight !65, !taffo.info !71, !taffo.constinfo !76
  %conv5 = sitofp i32 %n to float
  %div6 = fdiv float %add4, %conv5, !taffo.initweight !74, !taffo.info !71
  %arrayidx7 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.initweight !54, !taffo.info !75
  store float %div6, float* %arrayidx7, align 4, !taffo.initweight !65, !taffo.info !75
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !54, !taffo.info !71, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !36 !taffo.funinfo !37 !taffo.equivalentChild !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ]
  %cmp = icmp slt i32 %t.0, %tsteps
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %sub = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp2 = icmp slt i32 %i.0, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx = getelementptr inbounds float, float* %A, i32 %sub4
  %0 = load float, float* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds float, float* %A, i32 %i.0
  %1 = load float, float* %arrayidx5, align 4
  %add = fadd float %0, %1
  %add6 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx7 = getelementptr inbounds float, float* %A, i32 %add6
  %2 = load float, float* %arrayidx7, align 4
  %add8 = fadd float %add, %2
  %conv = fpext float %add8 to double
  %mul = fmul double 3.333300e-01, %conv, !taffo.constinfo !81
  %conv9 = fptrunc double %mul to float
  %arrayidx10 = getelementptr inbounds float, float* %B, i32 %i.0
  store float %conv9, float* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !84

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc28, %for.inc27 ]
  %sub12 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp13 = icmp slt i32 %i.1, %sub12
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %sub16 = sub nsw i32 %i.1, 1, !taffo.constinfo !27
  %arrayidx17 = getelementptr inbounds float, float* %B, i32 %sub16
  %3 = load float, float* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds float, float* %B, i32 %i.1
  %4 = load float, float* %arrayidx18, align 4
  %add19 = fadd float %3, %4
  %add20 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  %arrayidx21 = getelementptr inbounds float, float* %B, i32 %add20
  %5 = load float, float* %arrayidx21, align 4
  %add22 = fadd float %add19, %5
  %conv23 = fpext float %add22 to double
  %mul24 = fmul double 3.333300e-01, %conv23, !taffo.constinfo !81
  %conv25 = fptrunc double %mul24 to float
  %arrayidx26 = getelementptr inbounds float, float* %A, i32 %i.1
  store float %conv25, float* %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !85

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %t.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !86

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %A) #0 !taffo.initweight !30 !taffo.funinfo !87 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !92, !taffo.constinfo !27
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !90
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !69
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !56
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !95 !taffo.funinfo !96 !taffo.sourceFunction !57 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !99, !taffo.info !49
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !100, !taffo.info !49
  %conv = sitofp i32 %factor to float, !taffo.info !97
  %mul = fmul float %0, %conv, !taffo.initweight !101, !taffo.info !102
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !99, !taffo.info !49
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !100, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !104

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.2(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !105 !taffo.funinfo !106 !taffo.sourceFunction !59 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ], !taffo.info !63
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ], !taffo.info !107
  %sub = sub nsw i32 %n, 1, !taffo.info !109, !taffo.constinfo !27
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !90
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %i.0, 1, !taffo.info !92, !taffo.constinfo !27
  %arrayidx = getelementptr inbounds float, float* %A, i32 %sub4, !taffo.initweight !99, !taffo.info !49
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !100, !taffo.info !49
  %arrayidx5 = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.initweight !99, !taffo.info !49
  %1 = load float, float* %arrayidx5, align 4, !taffo.initweight !100, !taffo.info !49
  %add = fadd float %0, %1, !taffo.initweight !101, !taffo.info !111
  %add6 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx7 = getelementptr inbounds float, float* %A, i32 %add6, !taffo.initweight !99, !taffo.info !49
  %2 = load float, float* %arrayidx7, align 4, !taffo.initweight !100, !taffo.info !49
  %add8 = fadd float %add, %2, !taffo.initweight !101, !taffo.info !113
  %conv = fpext float %add8 to double, !taffo.initweight !115, !taffo.info !113
  %mul = fmul double 3.333300e-01, %conv, !taffo.initweight !116, !taffo.info !117, !taffo.constinfo !81
  %conv9 = fptrunc double %mul to float, !taffo.initweight !119, !taffo.info !120
  %arrayidx10 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.initweight !99, !taffo.info !51
  store float %conv9, float* %arrayidx10, align 4, !taffo.initweight !100, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !122

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !107
  %sub12 = sub nsw i32 %n, 1, !taffo.info !109, !taffo.constinfo !27
  %cmp13 = icmp slt i32 %i.1, %sub12, !taffo.info !90
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %sub16 = sub nsw i32 %i.1, 1, !taffo.info !92, !taffo.constinfo !27
  %arrayidx17 = getelementptr inbounds float, float* %B, i32 %sub16, !taffo.initweight !99, !taffo.info !51
  %3 = load float, float* %arrayidx17, align 4, !taffo.initweight !100, !taffo.info !51
  %arrayidx18 = getelementptr inbounds float, float* %B, i32 %i.1, !taffo.initweight !99, !taffo.info !51
  %4 = load float, float* %arrayidx18, align 4, !taffo.initweight !100, !taffo.info !51
  %add19 = fadd float %3, %4, !taffo.initweight !101, !taffo.info !123
  %add20 = add nsw i32 %i.1, 1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx21 = getelementptr inbounds float, float* %B, i32 %add20, !taffo.initweight !99, !taffo.info !51
  %5 = load float, float* %arrayidx21, align 4, !taffo.initweight !100, !taffo.info !51
  %add22 = fadd float %add19, %5, !taffo.initweight !101, !taffo.info !125
  %conv23 = fpext float %add22 to double, !taffo.initweight !115, !taffo.info !125
  %mul24 = fmul double 3.333300e-01, %conv23, !taffo.initweight !116, !taffo.info !127, !taffo.constinfo !81
  %conv25 = fptrunc double %mul24 to float, !taffo.initweight !119, !taffo.info !129
  %arrayidx26 = getelementptr inbounds float, float* %A, i32 %i.1, !taffo.initweight !99, !taffo.info !49
  store float %conv25, float* %arrayidx26, align 4, !taffo.initweight !100, !taffo.info !49
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !131

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %t.0, 1, !taffo.info !90, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !132

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !95 !taffo.funinfo !133 !taffo.sourceFunction !57 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !63
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !99, !taffo.info !51
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !100, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !97
  %mul = fmul float %0, %conv, !taffo.initweight !101, !taffo.info !134
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.initweight !99, !taffo.info !51
  store float %mul, float* %arrayidx1, align 4, !taffo.initweight !100, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !136

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !137 !taffo.funinfo !138 !taffo.sourceFunction !55 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !54, !taffo.info !139
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !65, !taffo.info !71

for.body:                                         ; preds = %for.cond
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !54, !taffo.info !71
  %add = fadd float %conv, 2.000000e+00, !taffo.initweight !65, !taffo.info !140, !taffo.constinfo !73
  %conv2 = sitofp i32 %n to float, !taffo.info !88
  %div = fdiv float %add, %conv2, !taffo.initweight !74, !taffo.info !142
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.initweight !54, !taffo.info !144
  store float %div, float* %arrayidx, align 4, !taffo.initweight !65, !taffo.info !75
  %conv3 = sitofp i32 %i.0 to float, !taffo.initweight !54, !taffo.info !71
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.initweight !65, !taffo.info !145, !taffo.constinfo !76
  %conv5 = sitofp i32 %n to float, !taffo.info !88
  %div6 = fdiv float %add4, %conv5, !taffo.initweight !74, !taffo.info !147
  %arrayidx7 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.initweight !54, !taffo.info !149
  store float %div6, float* %arrayidx7, align 4, !taffo.initweight !65, !taffo.info !75
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !54, !taffo.info !150, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !152

for.end:                                          ; preds = %for.cond
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
!5 = !{double 0.000000e+00, double 1.150000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x405111111F0C34C2}
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
!34 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.3}
!35 = distinct !{!35, !29}
!36 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
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
!50 = !{double 0x40211111276FB092, double 0x405111111F0C34C2}
!51 = !{i1 false, !52, i1 false, i2 -1}
!52 = !{double 1.280000e+01, double 0x4052222220BC382A}
!53 = !{i32 1}
!54 = !{i32 2}
!55 = !{void (i32, float*, float*)* @init_array}
!56 = !{i1 false, i1 false, i1 false, i1 false}
!57 = !{void (i32, float*, i32)* @scale_1d}
!58 = !{i1 false}
!59 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 1.600000e+01}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 0.000000e+00, double 1.000000e+00}
!65 = !{i32 3}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 1.600000e+01}
!68 = distinct !{!68, !29}
!69 = !{i1 false, i1 false, i1 false}
!70 = !{void (i32, float*, float*)* @init_array.4}
!71 = !{i1 false, !72, i1 false, i2 -1}
!72 = !{double -1.500000e+01, double 1.500000e+01}
!73 = !{i1 false, !25}
!74 = !{i32 4}
!75 = !{i1 false, i1 false, i1 false, i2 1}
!76 = !{i1 false, !77}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 3.000000e+00, double 3.000000e+00}
!79 = distinct !{!79, !29}
!80 = !{void (i32, i32, float*, float*)* @kernel_jacobi_1d.2}
!81 = !{!82, i1 false}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 3.333300e-01, double 3.333300e-01}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !29}
!87 = !{i32 1, !88, i32 1, !6}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.500000e+01, double 1.500000e+01}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 1.000000e+00, double 1.000000e+00}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 0.000000e+00, double 0.000000e+00}
!94 = distinct !{!94, !29}
!95 = !{i32 -1, i32 2, i32 -1}
!96 = !{i32 1, !88, i32 1, !49, i32 1, !97}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 6.400000e+01, double 6.400000e+01}
!99 = !{i32 5}
!100 = !{i32 6}
!101 = !{i32 7}
!102 = !{i1 false, !103, i1 false, i2 -1}
!103 = !{double 0x40811111276FB092, double 0x40B111111F0C34C2}
!104 = distinct !{!104, !29}
!105 = !{i32 -1, i32 -1, i32 2, i32 2}
!106 = !{i32 1, !22, i32 1, !88, i32 1, !49, i32 1, !51}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 1.000000e+00, double 2.000000e+00}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 1.400000e+01, double 1.400000e+01}
!111 = !{i1 false, !112, i1 false, i2 -1}
!112 = !{double 0x40311111276FB092, double 0x406111111F0C34C2}
!113 = !{i1 false, !114, i1 false, i2 -1}
!114 = !{double 0x40399999BB2788DB, double 0x40699999AE924F23}
!115 = !{i32 8}
!116 = !{i32 9}
!117 = !{i1 false, !118, i1 false, i2 -1}
!118 = !{double 0x40211105F81FE170, double 0x40511105EFBC6B1F}
!119 = !{i32 10}
!120 = !{i1 false, !121, i1 false, i2 -1}
!121 = !{double 0x40211105E0000000, double 0x4051110600000000}
!122 = distinct !{!122, !29}
!123 = !{i1 false, !124, i1 false, i2 -1}
!124 = !{double 2.560000e+01, double 0x4062222220BC382A}
!125 = !{i1 false, !126, i1 false, i2 -1}
!126 = !{double 0x4043333333333334, double 0x406B3333311A543F}
!127 = !{i1 false, !128, i1 false, i2 -1}
!128 = !{double 0x40299988D2A1F8E5, double 0x405222163E777C94}
!129 = !{i1 false, !130, i1 false, i2 -1}
!130 = !{double 0x40299988C0000000, double 0x4052221640000000}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !29}
!133 = !{i32 1, !88, i32 1, !51, i32 1, !97}
!134 = !{i1 false, !135, i1 false, i2 -1}
!135 = !{double 8.192000e+02, double 0x40B2222220BC382A}
!136 = distinct !{!136, !29}
!137 = !{i32 -1, i32 2, i32 2}
!138 = !{i32 1, !88, i32 1, !49, i32 1, !51}
!139 = !{i1 false, !64, i1 false, i2 -1}
!140 = !{i1 false, !141, i1 false, i2 -1}
!141 = !{double -1.300000e+01, double 1.700000e+01}
!142 = !{i1 false, !143, i1 false, i2 -1}
!143 = !{double 0xBFEBBBBBBBBBBBBC, double 0x3FF2222222222222}
!144 = !{i1 false, !50, i1 false, i2 1}
!145 = !{i1 false, !146, i1 false, i2 -1}
!146 = !{double -1.200000e+01, double 1.800000e+01}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double -8.000000e-01, double 1.200000e+00}
!149 = !{i1 false, !52, i1 false, i2 1}
!150 = !{i1 false, !151, i1 false, i2 -1}
!151 = !{double -1.400000e+01, double 1.600000e+01}
!152 = distinct !{!152, !29}
