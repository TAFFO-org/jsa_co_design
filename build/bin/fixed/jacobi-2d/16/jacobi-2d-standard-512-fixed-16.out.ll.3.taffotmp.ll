; ModuleID = './build/bin/fixed/jacobi-2d/16/jacobi-2d-standard-512-fixed-16.out.ll.2.taffotmp.ll'
source_filename = "./sources/jacobi-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [54 x i8] c"target('A') scalar(range(68.26667,7714.133301) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [22 x i8] c"./sources/jacobi-2d.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [44 x i8] c"scalar(range(102.400002,8226.133789) final)\00", section "llvm.metadata", !taffo.info !4
@A_float = dso_local global [15 x [15 x float]] zeroinitializer, align 4, !taffo.info !6
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
  %A = alloca [15 x [15 x float]], align 4, !taffo.initweight !47, !taffo.target !48, !taffo.info !49
  %B = alloca [15 x [15 x float]], align 4, !taffo.initweight !47, !taffo.info !51
  %A1 = bitcast [15 x [15 x float]]* %A to i8*, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  %B2 = bitcast [15 x [15 x float]]* %B to i8*, !taffo.initweight !53, !taffo.info !51
  %arraydecay = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  %arraydecay3 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.initweight !53, !taffo.info !51
  call void @init_array.2(i32 noundef 15, [15 x float]* noundef %arraydecay, [15 x float]* noundef %arraydecay3), !taffo.initweight !54, !taffo.target !48, !taffo.info !49, !taffo.originalCall !55, !taffo.constinfo !56
  %arraydecay4 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  %0 = bitcast [15 x float]* %arraydecay4 to float*, !taffo.initweight !54, !taffo.target !48, !taffo.info !49
  call void @scale_2d.3(i32 noundef 15, i32 noundef 15, float* noundef %0, i32 noundef 512), !taffo.initweight !57, !taffo.target !48, !taffo.info !49, !taffo.originalCall !58, !taffo.constinfo !59
  %arraydecay5 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.initweight !53, !taffo.info !51
  %1 = bitcast [15 x float]* %arraydecay5 to float*, !taffo.initweight !54, !taffo.info !51
  call void @scale_2d.4(i32 noundef 15, i32 noundef 15, float* noundef %1, i32 noundef 512), !taffo.initweight !57, !taffo.info !51, !taffo.originalCall !58, !taffo.constinfo !59
  call void @timer_start(), !taffo.constinfo !60
  %arraydecay6 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  %arraydecay7 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.initweight !53, !taffo.info !51
  call void @kernel_jacobi_2d.1(i32 noundef 10, i32 noundef 15, [15 x float]* noundef %arraydecay6, [15 x float]* noundef %arraydecay7), !taffo.initweight !54, !taffo.target !48, !taffo.info !49, !taffo.originalCall !61, !taffo.constinfo !59
  call void @timer_stop(), !taffo.constinfo !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !66
  %cmp9 = icmp slt i32 %j.0, 15, !taffo.info !64
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %arrayidx = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 %i.0, !taffo.initweight !53, !taffo.target !48, !taffo.info !49
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !54, !taffo.target !48, !taffo.info !49
  %2 = load float, float* %arrayidx11, align 4, !taffo.initweight !57, !taffo.target !48, !taffo.info !49
  %arrayidx12 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx13 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.info !6
  store float %2, float* %arrayidx13, align 4, !taffo.initweight !68, !taffo.target !48, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !71

for.end:                                          ; preds = %for.cond8
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !74

for.end16:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 15, [15 x float]* noundef getelementptr inbounds ([15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !75
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !40 !taffo.funinfo !41 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !32 !taffo.funinfo !33 !taffo.equivalentChild !76 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19 ], !taffo.initweight !47, !taffo.info !77
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !54, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end21, !taffo.initweight !57, !taffo.info !77

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !77
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.initweight !54, !taffo.info !77
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !57, !taffo.info !77

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !54, !taffo.info !77
  %add = add nsw i32 %j.0, 2, !taffo.initweight !54, !taffo.info !77, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !57, !taffo.info !77
  %mul = fmul float %conv, %conv6, !taffo.initweight !57, !taffo.info !77
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !68, !taffo.info !77, !taffo.constinfo !79
  %conv8 = sitofp i32 %n to float
  %div = fdiv float %add7, %conv8, !taffo.initweight !80, !taffo.info !77
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.initweight !54, !taffo.info !81
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !54, !taffo.info !81
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !57, !taffo.info !81
  %conv10 = sitofp i32 %i.0 to float, !taffo.initweight !54, !taffo.info !77
  %add11 = add nsw i32 %j.0, 3, !taffo.initweight !54, !taffo.info !77, !taffo.constinfo !27
  %conv12 = sitofp i32 %add11 to float, !taffo.initweight !57, !taffo.info !77
  %mul13 = fmul float %conv10, %conv12, !taffo.initweight !57, !taffo.info !77
  %add14 = fadd float %mul13, 3.000000e+00, !taffo.initweight !68, !taffo.info !77, !taffo.constinfo !82
  %conv15 = sitofp i32 %n to float
  %div16 = fdiv float %add14, %conv15, !taffo.initweight !80, !taffo.info !77
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.0, !taffo.initweight !54, !taffo.info !81
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %j.0, !taffo.initweight !54, !taffo.info !81
  store float %div16, float* %arrayidx18, align 4, !taffo.initweight !57, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !54, !taffo.info !77, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !85

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %i.0, 1, !taffo.initweight !54, !taffo.info !77, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !86

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d(i32 noundef %tsteps, i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !35 !taffo.funinfo !36 !taffo.equivalentChild !87 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc65, %for.inc64 ]
  %cmp = icmp slt i32 %t.0, %tsteps
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc27, %for.inc26 ]
  %sub = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp2 = icmp slt i32 %i.0, %sub
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc, %for.inc ]
  %sub5 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp6 = icmp slt i32 %j.0, %sub5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0
  %sub10 = sub nsw i32 %j.0, 1, !taffo.constinfo !27
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx9, i32 0, i32 %sub10
  %1 = load float, float* %arrayidx11, align 4
  %add = fadd float %0, %1
  %arrayidx12 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0
  %add13 = add nsw i32 1, %j.0, !taffo.constinfo !27
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i32 0, i32 %add13
  %2 = load float, float* %arrayidx14, align 4
  %add15 = fadd float %add, %2
  %add16 = add nsw i32 1, %i.0, !taffo.constinfo !27
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %add16
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %j.0
  %3 = load float, float* %arrayidx18, align 4
  %add19 = fadd float %add15, %3
  %sub20 = sub nsw i32 %i.0, 1, !taffo.constinfo !27
  %arrayidx21 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %sub20
  %arrayidx22 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx21, i32 0, i32 %j.0
  %4 = load float, float* %arrayidx22, align 4
  %add23 = fadd float %add19, %4
  %mul = fmul float 0x3FC99999A0000000, %add23, !taffo.constinfo !88
  %arrayidx24 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.0
  %arrayidx25 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx24, i32 0, i32 %j.0
  store float %mul, float* %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !91

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %inc27 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !92

for.end28:                                        ; preds = %for.cond1
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc61, %for.end28
  %i.1 = phi i32 [ 1, %for.end28 ], [ %inc62, %for.inc61 ]
  %sub30 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp31 = icmp slt i32 %i.1, %sub30
  br i1 %cmp31, label %for.body32, label %for.end63

for.body32:                                       ; preds = %for.cond29
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.body32
  %j.1 = phi i32 [ 1, %for.body32 ], [ %inc59, %for.inc58 ]
  %sub34 = sub nsw i32 %n, 1, !taffo.constinfo !27
  %cmp35 = icmp slt i32 %j.1, %sub34
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1
  %arrayidx38 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx37, i32 0, i32 %j.1
  %5 = load float, float* %arrayidx38, align 4
  %arrayidx39 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1
  %sub40 = sub nsw i32 %j.1, 1, !taffo.constinfo !27
  %arrayidx41 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx39, i32 0, i32 %sub40
  %6 = load float, float* %arrayidx41, align 4
  %add42 = fadd float %5, %6
  %arrayidx43 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1
  %add44 = add nsw i32 1, %j.1, !taffo.constinfo !27
  %arrayidx45 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx43, i32 0, i32 %add44
  %7 = load float, float* %arrayidx45, align 4
  %add46 = fadd float %add42, %7
  %add47 = add nsw i32 1, %i.1, !taffo.constinfo !27
  %arrayidx48 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %add47
  %arrayidx49 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx48, i32 0, i32 %j.1
  %8 = load float, float* %arrayidx49, align 4
  %add50 = fadd float %add46, %8
  %sub51 = sub nsw i32 %i.1, 1, !taffo.constinfo !27
  %arrayidx52 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %sub51
  %arrayidx53 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx52, i32 0, i32 %j.1
  %9 = load float, float* %arrayidx53, align 4
  %add54 = fadd float %add50, %9
  %mul55 = fmul float 0x3FC99999A0000000, %add54, !taffo.constinfo !88
  %arrayidx56 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.1
  %arrayidx57 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx56, i32 0, i32 %j.1
  store float %mul55, float* %arrayidx57, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body36
  %inc59 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond33, !llvm.loop !93

for.end60:                                        ; preds = %for.cond33
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %inc62 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond29, !llvm.loop !94

for.end63:                                        ; preds = %for.cond29
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %inc65 = add nsw i32 %t.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !95

for.end66:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [15 x float]* noundef %A) #0 !taffo.initweight !30 !taffo.funinfo !96 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !101
  %add = add nsw i32 %mul, %j.0, !taffo.info !101
  %rem = srem i32 %add, 20, !taffo.info !101, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !99
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !75
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !56
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !103

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !104

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d.1(i32 noundef %tsteps, i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !105 !taffo.funinfo !106 !taffo.sourceFunction !61 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc65, %for.inc64 ], !taffo.info !64
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc27, %for.inc26 ], !taffo.info !107
  %sub = sub nsw i32 %n, 1, !taffo.info !109, !taffo.constinfo !27
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc, %for.inc ], !taffo.info !107
  %sub5 = sub nsw i32 %n, 1, !taffo.info !109, !taffo.constinfo !27
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !99
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.initweight !80, !taffo.info !49
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !111, !taffo.info !49
  %0 = load float, float* %arrayidx8, align 4, !taffo.initweight !112, !taffo.info !49
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.initweight !80, !taffo.info !49
  %sub10 = sub nsw i32 %j.0, 1, !taffo.info !101, !taffo.constinfo !27
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx9, i32 0, i32 %sub10, !taffo.initweight !111, !taffo.info !49
  %1 = load float, float* %arrayidx11, align 4, !taffo.initweight !112, !taffo.info !49
  %add = fadd float %0, %1, !taffo.initweight !113, !taffo.info !114
  %arrayidx12 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.initweight !80, !taffo.info !49
  %add13 = add nsw i32 1, %j.0, !taffo.info !25, !taffo.constinfo !27
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i32 0, i32 %add13, !taffo.initweight !111, !taffo.info !49
  %2 = load float, float* %arrayidx14, align 4, !taffo.initweight !112, !taffo.info !49
  %add15 = fadd float %add, %2, !taffo.initweight !113, !taffo.info !116
  %add16 = add nsw i32 1, %i.0, !taffo.info !25, !taffo.constinfo !27
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %add16, !taffo.initweight !80, !taffo.info !49
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %j.0, !taffo.initweight !111, !taffo.info !49
  %3 = load float, float* %arrayidx18, align 4, !taffo.initweight !112, !taffo.info !49
  %add19 = fadd float %add15, %3, !taffo.initweight !113, !taffo.info !118
  %sub20 = sub nsw i32 %i.0, 1, !taffo.info !101, !taffo.constinfo !27
  %arrayidx21 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %sub20, !taffo.initweight !80, !taffo.info !49
  %arrayidx22 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx21, i32 0, i32 %j.0, !taffo.initweight !111, !taffo.info !49
  %4 = load float, float* %arrayidx22, align 4, !taffo.initweight !112, !taffo.info !49
  %add23 = fadd float %add19, %4, !taffo.initweight !113, !taffo.info !120
  %mul = fmul float 0x3FC99999A0000000, %add23, !taffo.initweight !122, !taffo.info !123, !taffo.constinfo !88
  %arrayidx24 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.0, !taffo.initweight !80, !taffo.info !51
  %arrayidx25 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx24, i32 0, i32 %j.0, !taffo.initweight !111, !taffo.info !51
  store float %mul, float* %arrayidx25, align 4, !taffo.initweight !112, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %j.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !125

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %inc27 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !126

for.end28:                                        ; preds = %for.cond1
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc61, %for.end28
  %i.1 = phi i32 [ 1, %for.end28 ], [ %inc62, %for.inc61 ], !taffo.info !107
  %sub30 = sub nsw i32 %n, 1, !taffo.info !109, !taffo.constinfo !27
  %cmp31 = icmp slt i32 %i.1, %sub30, !taffo.info !99
  br i1 %cmp31, label %for.body32, label %for.end63

for.body32:                                       ; preds = %for.cond29
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.body32
  %j.1 = phi i32 [ 1, %for.body32 ], [ %inc59, %for.inc58 ], !taffo.info !107
  %sub34 = sub nsw i32 %n, 1, !taffo.info !109, !taffo.constinfo !27
  %cmp35 = icmp slt i32 %j.1, %sub34, !taffo.info !99
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1, !taffo.initweight !80, !taffo.info !51
  %arrayidx38 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx37, i32 0, i32 %j.1, !taffo.initweight !111, !taffo.info !51
  %5 = load float, float* %arrayidx38, align 4, !taffo.initweight !112, !taffo.info !51
  %arrayidx39 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1, !taffo.initweight !80, !taffo.info !51
  %sub40 = sub nsw i32 %j.1, 1, !taffo.info !101, !taffo.constinfo !27
  %arrayidx41 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx39, i32 0, i32 %sub40, !taffo.initweight !111, !taffo.info !51
  %6 = load float, float* %arrayidx41, align 4, !taffo.initweight !112, !taffo.info !51
  %add42 = fadd float %5, %6, !taffo.initweight !113, !taffo.info !127
  %arrayidx43 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1, !taffo.initweight !80, !taffo.info !51
  %add44 = add nsw i32 1, %j.1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx45 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx43, i32 0, i32 %add44, !taffo.initweight !111, !taffo.info !51
  %7 = load float, float* %arrayidx45, align 4, !taffo.initweight !112, !taffo.info !51
  %add46 = fadd float %add42, %7, !taffo.initweight !113, !taffo.info !129
  %add47 = add nsw i32 1, %i.1, !taffo.info !25, !taffo.constinfo !27
  %arrayidx48 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %add47, !taffo.initweight !80, !taffo.info !51
  %arrayidx49 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx48, i32 0, i32 %j.1, !taffo.initweight !111, !taffo.info !51
  %8 = load float, float* %arrayidx49, align 4, !taffo.initweight !112, !taffo.info !51
  %add50 = fadd float %add46, %8, !taffo.initweight !113, !taffo.info !131
  %sub51 = sub nsw i32 %i.1, 1, !taffo.info !101, !taffo.constinfo !27
  %arrayidx52 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %sub51, !taffo.initweight !80, !taffo.info !51
  %arrayidx53 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx52, i32 0, i32 %j.1, !taffo.initweight !111, !taffo.info !51
  %9 = load float, float* %arrayidx53, align 4, !taffo.initweight !112, !taffo.info !51
  %add54 = fadd float %add50, %9, !taffo.initweight !113, !taffo.info !133
  %mul55 = fmul float 0x3FC99999A0000000, %add54, !taffo.initweight !122, !taffo.info !135, !taffo.constinfo !88
  %arrayidx56 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.1, !taffo.initweight !80, !taffo.info !49
  %arrayidx57 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx56, i32 0, i32 %j.1, !taffo.initweight !111, !taffo.info !49
  store float %mul55, float* %arrayidx57, align 4, !taffo.initweight !112, !taffo.info !49
  br label %for.inc58

for.inc58:                                        ; preds = %for.body36
  %inc59 = add nsw i32 %j.1, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond33, !llvm.loop !137

for.end60:                                        ; preds = %for.cond33
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond29, !llvm.loop !138

for.end63:                                        ; preds = %for.cond29
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %inc65 = add nsw i32 %t.0, 1, !taffo.info !99, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !139

for.end66:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !140 !taffo.funinfo !141 !taffo.sourceFunction !55 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19 ], !taffo.initweight !47, !taffo.info !77
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !54, !taffo.info !142
  br i1 %cmp, label %for.body, label %for.end21, !taffo.initweight !57, !taffo.info !77

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !47, !taffo.info !77
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.initweight !54, !taffo.info !142
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !57, !taffo.info !77

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.initweight !54, !taffo.info !77
  %add = add nsw i32 %j.0, 2, !taffo.initweight !54, !taffo.info !143, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !57, !taffo.info !143
  %mul = fmul float %conv, %conv6, !taffo.initweight !57, !taffo.info !145
  %add7 = fadd float %mul, 2.000000e+00, !taffo.initweight !68, !taffo.info !147, !taffo.constinfo !79
  %conv8 = sitofp i32 %n to float, !taffo.info !97
  %div = fdiv float %add7, %conv8, !taffo.initweight !80, !taffo.info !149
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.initweight !54, !taffo.info !151
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !54, !taffo.info !151
  store float %div, float* %arrayidx9, align 4, !taffo.initweight !57, !taffo.info !81
  %conv10 = sitofp i32 %i.0 to float, !taffo.initweight !54, !taffo.info !77
  %add11 = add nsw i32 %j.0, 3, !taffo.initweight !54, !taffo.info !152, !taffo.constinfo !27
  %conv12 = sitofp i32 %add11 to float, !taffo.initweight !57, !taffo.info !152
  %mul13 = fmul float %conv10, %conv12, !taffo.initweight !57, !taffo.info !154
  %add14 = fadd float %mul13, 3.000000e+00, !taffo.initweight !68, !taffo.info !156, !taffo.constinfo !82
  %conv15 = sitofp i32 %n to float, !taffo.info !97
  %div16 = fdiv float %add14, %conv15, !taffo.initweight !80, !taffo.info !158
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.0, !taffo.initweight !54, !taffo.info !160
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %j.0, !taffo.initweight !54, !taffo.info !160
  store float %div16, float* %arrayidx18, align 4, !taffo.initweight !57, !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !54, !taffo.info !161, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !163

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %i.0, 1, !taffo.initweight !54, !taffo.info !161, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !164

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !165 !taffo.funinfo !166 !taffo.sourceFunction !58 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !111, !taffo.info !49
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !112, !taffo.info !49
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !113, !taffo.info !49
  %conv = sitofp i32 %factor to float, !taffo.info !167
  %mul = fmul float %1, %conv, !taffo.initweight !122, !taffo.info !169
  %2 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !111, !taffo.info !49
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !112, !taffo.info !49
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !113, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !171

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !172

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !165 !taffo.funinfo !173 !taffo.sourceFunction !58 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !111, !taffo.info !51
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !112, !taffo.info !51
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !113, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !167
  %mul = fmul float %1, %conv, !taffo.initweight !122, !taffo.info !174
  %2 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !111, !taffo.info !51
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !112, !taffo.info !51
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !113, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !176

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !177

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
!5 = !{double 0.000000e+00, double 1.150000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 0x40BE22222003AB86}
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
!37 = !{void (i32, i32, float*, i32)* @scale_2d.3, void (i32, i32, float*, i32)* @scale_2d.4}
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
!50 = !{double 0x405111111F0C34C2, double 0x40BE22222003AB86}
!51 = !{i1 false, !52, i1 false, i2 -1}
!52 = !{double 0x40599999A1FD156A, double 0x40C011111FFF79C8}
!53 = !{i32 1}
!54 = !{i32 2}
!55 = !{void (i32, [15 x float]*, [15 x float]*)* @init_array}
!56 = !{i1 false, i1 false, i1 false, i1 false}
!57 = !{i32 3}
!58 = !{void (i32, i32, float*, i32)* @scale_2d}
!59 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!60 = !{i1 false}
!61 = !{void (i32, i32, [15 x float]*, [15 x float]*)* @kernel_jacobi_2d}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 1.600000e+01}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 2.560000e+02}
!68 = !{i32 4}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 2.560000e+02}
!71 = distinct !{!71, !29}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 1.600000e+01}
!74 = distinct !{!74, !29}
!75 = !{i1 false, i1 false, i1 false}
!76 = !{void (i32, [15 x float]*, [15 x float]*)* @init_array.2}
!77 = !{i1 false, !78, i1 false, i2 -1}
!78 = !{double -1.500000e+01, double 1.500000e+01}
!79 = !{i1 false, !25}
!80 = !{i32 5}
!81 = !{i1 false, i1 false, i1 false, i2 1}
!82 = !{i1 false, !83}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 3.000000e+00, double 3.000000e+00}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !29}
!87 = !{void (i32, i32, [15 x float]*, [15 x float]*)* @kernel_jacobi_2d.1}
!88 = !{!89, i1 false}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 0x3FC99999A0000000, double 0x3FC99999A0000000}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !29}
!96 = !{i32 1, !97, i32 1, !6}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.500000e+01, double 1.500000e+01}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 1.000000e+00, double 1.000000e+00}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 0.000000e+00, double 0.000000e+00}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = !{i32 -1, i32 -1, i32 2, i32 2}
!106 = !{i32 1, !22, i32 1, !97, i32 1, !49, i32 1, !51}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 1.000000e+00, double 2.000000e+00}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 1.400000e+01, double 1.400000e+01}
!111 = !{i32 6}
!112 = !{i32 7}
!113 = !{i32 8}
!114 = !{i1 false, !115, i1 false, i2 -1}
!115 = !{double 0x406111111F0C34C2, double 0x40CE22222003AB86}
!116 = !{i1 false, !117, i1 false, i2 -1}
!117 = !{double 0x40699999AE924F23, double 0x40D699999802C0A4}
!118 = !{i1 false, !119, i1 false, i2 -1}
!119 = !{double 0x407111111F0C34C2, double 0x40DE22222003AB86}
!120 = !{i1 false, !121, i1 false, i2 -1}
!121 = !{double 0x4075555566CF41F2, double 0x40E2D55554024B34}
!122 = !{i32 9}
!123 = !{i1 false, !124, i1 false, i2 -1}
!124 = !{double 0x4051111123507909, double 0x40BE2222278C340E}
!125 = distinct !{!125, !29}
!126 = distinct !{!126, !29}
!127 = !{i1 false, !128, i1 false, i2 -1}
!128 = !{double 0x40699999A1FD156A, double 0x40D011111FFF79C8}
!129 = !{i1 false, !130, i1 false, i2 -1}
!130 = !{double 0x40733333397DD010, double 0x40D81999AFFF36AC}
!131 = !{i1 false, !132, i1 false, i2 -1}
!132 = !{double 0x40799999A1FD156A, double 0x40E011111FFF79C8}
!133 = !{i1 false, !134, i1 false, i2 -1}
!134 = !{double 0x40800000053E2D62, double 0x40E4155567FF583A}
!135 = !{i1 false, !136, i1 false, i2 -1}
!136 = !{double 0x40599999A8637BD2, double 0x40C011112403BE10}
!137 = distinct !{!137, !29}
!138 = distinct !{!138, !29}
!139 = distinct !{!139, !29}
!140 = !{i32 -1, i32 2, i32 2}
!141 = !{i32 1, !97, i32 1, !49, i32 1, !51}
!142 = !{i1 false, !65, i1 false, i2 -1}
!143 = !{i1 false, !144, i1 false, i2 -1}
!144 = !{double -1.300000e+01, double 1.700000e+01}
!145 = !{i1 false, !146, i1 false, i2 -1}
!146 = !{double -2.550000e+02, double 2.550000e+02}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double -2.530000e+02, double 2.570000e+02}
!149 = !{i1 false, !150, i1 false, i2 -1}
!150 = !{double 0xC030DDDDDDDDDDDE, double 0x4031222222222222}
!151 = !{i1 false, !50, i1 false, i2 1}
!152 = !{i1 false, !153, i1 false, i2 -1}
!153 = !{double -1.200000e+01, double 1.800000e+01}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double -2.700000e+02, double 2.700000e+02}
!156 = !{i1 false, !157, i1 false, i2 -1}
!157 = !{double -2.670000e+02, double 2.730000e+02}
!158 = !{i1 false, !159, i1 false, i2 -1}
!159 = !{double -1.780000e+01, double 1.820000e+01}
!160 = !{i1 false, !52, i1 false, i2 1}
!161 = !{i1 false, !162, i1 false, i2 -1}
!162 = !{double -1.400000e+01, double 1.600000e+01}
!163 = distinct !{!163, !29}
!164 = distinct !{!164, !29}
!165 = !{i32 -1, i32 -1, i32 3, i32 -1}
!166 = !{i32 1, !97, i32 1, !97, i32 1, !49, i32 1, !167}
!167 = !{i1 false, !168, i1 false, i2 0}
!168 = !{double 5.120000e+02, double 5.120000e+02}
!169 = !{i1 false, !170, i1 false, i2 -1}
!170 = !{double 0x40E111111F0C34C2, double 0x414E22222003AB86}
!171 = distinct !{!171, !29}
!172 = distinct !{!172, !29}
!173 = !{i32 1, !97, i32 1, !97, i32 1, !51, i32 1, !167}
!174 = !{i1 false, !175, i1 false, i2 -1}
!175 = !{double 0x40E99999A1FD156A, double 0x415011111FFF79C8}
!176 = distinct !{!176, !29}
!177 = distinct !{!177, !29}
