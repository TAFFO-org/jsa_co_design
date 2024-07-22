; ModuleID = './build/bin/fixed/trmm/8/trmm-standard-128-fixed-8.out.ll.2.taffotmp.ll'
source_filename = "./sources/trmm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [29 x i8] c"scalar(range(1.5,1.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [17 x i8] c"./sources/trmm.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,128.0) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [45 x i8] c"target('B') scalar(range(0.0,85320.0) final)\00", section "llvm.metadata", !taffo.info !4
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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !32 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !33 !taffo.funinfo !34 {
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
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !36 !taffo.funinfo !37 !taffo.equivalentChild !38 {
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
  br label %for.cond1, !llvm.loop !39

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !40

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !41 !taffo.funinfo !42 {
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
  br label %for.cond4, !llvm.loop !43

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !44

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !45

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !46 !taffo.funinfo !46 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !46 !taffo.funinfo !46 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.start !47 {
entry:
  %alpha = alloca float, align 4, !taffo.initweight !48, !taffo.info !49
  %A = alloca [10 x [10 x float]], align 4, !taffo.initweight !48, !taffo.info !51
  %B = alloca [10 x [16 x float]], align 4, !taffo.initweight !48, !taffo.info !53, !taffo.target !54
  %alpha1 = bitcast float* %alpha to i8*, !taffo.initweight !55, !taffo.info !49
  %A2 = bitcast [10 x [10 x float]]* %A to i8*, !taffo.initweight !55, !taffo.info !51
  %B3 = bitcast [10 x [16 x float]]* %B to i8*, !taffo.initweight !55, !taffo.info !53, !taffo.target !54
  %arraydecay = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !55, !taffo.info !51
  %arraydecay4 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !55, !taffo.info !53, !taffo.target !54
  call void @init_array.3(i32 noundef 10, i32 noundef 16, float* noundef %alpha, [10 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay4), !taffo.initweight !55, !taffo.info !49, !taffo.originalCall !56, !taffo.constinfo !57
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 128), !taffo.initweight !55, !taffo.info !49, !taffo.originalCall !58, !taffo.constinfo !59
  %arraydecay5 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !55, !taffo.info !51
  %0 = bitcast [10 x float]* %arraydecay5 to float*, !taffo.initweight !60, !taffo.info !51
  call void @scale_2d.4(i32 noundef 10, i32 noundef 10, float* noundef %0, i32 noundef 128), !taffo.initweight !61, !taffo.info !51, !taffo.originalCall !62, !taffo.constinfo !63
  %arraydecay6 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !55, !taffo.info !53, !taffo.target !54
  %1 = bitcast [16 x float]* %arraydecay6 to float*, !taffo.initweight !60, !taffo.info !53, !taffo.target !54
  call void @scale_2d.5(i32 noundef 10, i32 noundef 16, float* noundef %1, i32 noundef 128), !taffo.initweight !61, !taffo.info !53, !taffo.target !54, !taffo.originalCall !62, !taffo.constinfo !63
  call void @timer_start(), !taffo.constinfo !64
  %2 = load float, float* %alpha, align 4, !taffo.initweight !55, !taffo.info !49
  %arraydecay7 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.initweight !55, !taffo.info !51
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.initweight !55, !taffo.info !53, !taffo.target !54
  call void @kernel_trmm.2(i32 noundef 10, i32 noundef 16, float noundef %2, [10 x float]* noundef %arraydecay7, [16 x float]* noundef %arraydecay8), !taffo.initweight !60, !taffo.info !49, !taffo.originalCall !65, !taffo.constinfo !57
  call void @timer_stop(), !taffo.constinfo !64
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !66
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !68
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !70
  %cmp10 = icmp slt i32 %j.0, 16, !taffo.info !68
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 %i.0, !taffo.initweight !55, !taffo.info !53, !taffo.target !54
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !60, !taffo.info !53, !taffo.target !54
  %3 = load float, float* %arrayidx12, align 4, !taffo.initweight !61, !taffo.info !53, !taffo.target !54
  %arrayidx13 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 %i.0, !taffo.info !6
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !6
  store float %3, float* %arrayidx14, align 4, !taffo.initweight !72, !taffo.info !53, !taffo.target !54
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !27
  br label %for.cond9, !llvm.loop !75

for.end:                                          ; preds = %for.cond9
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !78

for.end17:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 0)), !taffo.constinfo !79
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !41 !taffo.funinfo !42 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !41 !taffo.funinfo !42 !taffo.equivalentChild !80 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.constinfo !81
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.initweight !48, !taffo.info !83
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !60, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end29, !taffo.initweight !61, !taffo.info !83

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !84
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !60, !taffo.info !84
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !61, !taffo.info !84

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.initweight !60, !taffo.info !83
  br i1 %cmp6, label %if.then, label %if.else, !taffo.initweight !61, !taffo.info !83

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.initweight !60, !taffo.info !83
  %rem = srem i32 %add, %m, !taffo.initweight !61, !taffo.info !83
  %conv = sitofp i32 %rem to float, !taffo.initweight !72, !taffo.info !83
  %conv7 = sitofp i32 %m to float
  %div = fdiv float %conv, %conv7, !taffo.initweight !86, !taffo.info !83
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !60, !taffo.info !87
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !60, !taffo.info !87
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !61, !taffo.info !87
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !60, !taffo.info !87
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.initweight !60, !taffo.info !87
  store float 0.000000e+00, float* %arrayidx10, align 4, !taffo.initweight !61, !taffo.info !87, !taffo.constinfo !88
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !60, !taffo.info !84, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !91

for.end:                                          ; preds = %for.cond3
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !60, !taffo.info !87
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %i.0, !taffo.initweight !60, !taffo.info !87
  store float 1.000000e+00, float* %arrayidx12, align 4, !taffo.initweight !61, !taffo.info !87, !taffo.constinfo !92
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.initweight !48, !taffo.info !84
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.initweight !60, !taffo.info !84
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.initweight !61, !taffo.info !84

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.initweight !60, !taffo.info !83
  %add17 = add nsw i32 %n, %sub, !taffo.initweight !61, !taffo.info !83
  %rem18 = srem i32 %add17, %n, !taffo.initweight !72, !taffo.info !83
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !86, !taffo.info !83
  %conv20 = sitofp i32 %n to float
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !95, !taffo.info !83
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !60, !taffo.info !87
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.1, !taffo.initweight !60, !taffo.info !87
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !61, !taffo.info !87
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.initweight !60, !taffo.info !84, !taffo.constinfo !27
  br label %for.cond13, !llvm.loop !96

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.initweight !60, !taffo.info !83, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !97

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !41 !taffo.funinfo !42 !taffo.equivalentChild !98 {
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
  br label %for.cond4, !llvm.loop !99

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
  br label %for.cond1, !llvm.loop !100

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !101

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %B) #0 !taffo.initweight !33 !taffo.funinfo !102 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !89
  %add = add nsw i32 %mul, %j.0, !taffo.info !89
  %rem = srem i32 %add, 20, !taffo.info !89, !taffo.constinfo !27
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !93
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !taffo.constinfo !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !6
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !6
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double noundef %conv), !taffo.constinfo !79
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !105

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !106

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !30 !taffo.funinfo !31 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !107 !taffo.funinfo !108 !taffo.sourceFunction !58 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.2(i32 noundef %m, i32 noundef %n, float noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !111 !taffo.funinfo !112 !taffo.sourceFunction !65 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc19, %for.inc18 ], !taffo.info !68
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %add = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !27
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ %add, %for.body3 ], [ %inc, %for.inc ], !taffo.info !113
  %cmp5 = icmp slt i32 %k.0, %m, !taffo.info !93
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %k.0, !taffo.initweight !86, !taffo.info !51
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %i.0, !taffo.initweight !95, !taffo.info !51
  %0 = load float, float* %arrayidx7, align 4, !taffo.initweight !115, !taffo.info !51
  %arrayidx8 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %k.0, !taffo.initweight !86, !taffo.info !53
  %arrayidx9 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx8, i32 0, i32 %j.0, !taffo.initweight !95, !taffo.info !53
  %1 = load float, float* %arrayidx9, align 4, !taffo.initweight !115, !taffo.info !53
  %mul = fmul float %0, %1, !taffo.initweight !116, !taffo.info !117
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !86, !taffo.info !53
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.initweight !95, !taffo.info !53
  %2 = load float, float* %arrayidx11, align 4, !taffo.initweight !115, !taffo.info !53
  %add12 = fadd float %2, %mul, !taffo.initweight !116, !taffo.info !119
  store float %add12, float* %arrayidx11, align 4, !taffo.initweight !115, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !25, !taffo.constinfo !27
  br label %for.cond4, !llvm.loop !121

for.end:                                          ; preds = %for.cond4
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !86, !taffo.info !53
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !95, !taffo.info !53
  %3 = load float, float* %arrayidx14, align 4, !taffo.initweight !115, !taffo.info !53
  %mul15 = fmul float %alpha, %3, !taffo.initweight !86, !taffo.info !122
  %arrayidx16 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !86, !taffo.info !53
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx16, i32 0, i32 %j.0, !taffo.initweight !95, !taffo.info !53
  store float %mul15, float* %arrayidx17, align 4, !taffo.initweight !95, !taffo.info !49
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !124

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !125

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.3(i32 noundef %m, i32 noundef %n, float* noundef %alpha, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !126 !taffo.funinfo !112 !taffo.sourceFunction !56 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.initweight !72, !taffo.info !49, !taffo.constinfo !81
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.initweight !48, !taffo.info !127
  %cmp = icmp slt i32 %i.0, %m, !taffo.initweight !60, !taffo.info !128
  br i1 %cmp, label %for.body, label %for.end29, !taffo.initweight !61, !taffo.info !83

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.initweight !48, !taffo.info !129
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.initweight !60, !taffo.info !128
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.initweight !61, !taffo.info !84

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.initweight !60, !taffo.info !128
  br i1 %cmp6, label %if.then, label %if.else, !taffo.initweight !61, !taffo.info !83

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.initweight !60, !taffo.info !131
  %rem = srem i32 %add, %m, !taffo.initweight !61, !taffo.info !133
  %conv = sitofp i32 %rem to float, !taffo.initweight !72, !taffo.info !133
  %conv7 = sitofp i32 %m to float, !taffo.info !22
  %div = fdiv float %conv, %conv7, !taffo.initweight !86, !taffo.info !135
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !60, !taffo.info !137
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !60, !taffo.info !137
  store float %div, float* %arrayidx8, align 4, !taffo.initweight !61, !taffo.info !87
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !60, !taffo.info !137
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.initweight !60, !taffo.info !137
  store float 0.000000e+00, float* %arrayidx10, align 4, !taffo.initweight !61, !taffo.info !87, !taffo.constinfo !88
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.initweight !60, !taffo.info !138, !taffo.constinfo !27
  br label %for.cond3, !llvm.loop !140

for.end:                                          ; preds = %for.cond3
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.initweight !60, !taffo.info !137
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %i.0, !taffo.initweight !60, !taffo.info !137
  store float 1.000000e+00, float* %arrayidx12, align 4, !taffo.initweight !61, !taffo.info !87, !taffo.constinfo !92
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.initweight !48, !taffo.info !129
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.initweight !60, !taffo.info !128
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.initweight !61, !taffo.info !84

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.initweight !60, !taffo.info !141
  %add17 = add nsw i32 %n, %sub, !taffo.initweight !61, !taffo.info !131
  %rem18 = srem i32 %add17, %n, !taffo.initweight !72, !taffo.info !143
  %conv19 = sitofp i32 %rem18 to float, !taffo.initweight !86, !taffo.info !143
  %conv20 = sitofp i32 %n to float, !taffo.info !103
  %div21 = fdiv float %conv19, %conv20, !taffo.initweight !95, !taffo.info !145
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.initweight !60, !taffo.info !147
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.1, !taffo.initweight !60, !taffo.info !147
  store float %div21, float* %arrayidx23, align 4, !taffo.initweight !61, !taffo.info !87
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.initweight !60, !taffo.info !138, !taffo.constinfo !27
  br label %for.cond13, !llvm.loop !148

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.initweight !60, !taffo.info !149, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !150

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !151 !taffo.funinfo !152 !taffo.sourceFunction !62 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !95, !taffo.info !51
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !115, !taffo.info !51
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !116, !taffo.info !51
  %conv = sitofp i32 %factor to float, !taffo.info !109
  %mul = fmul float %1, %conv, !taffo.initweight !153, !taffo.info !154
  %2 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !95, !taffo.info !51
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !115, !taffo.info !51
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !116, !taffo.info !51
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !156

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !157

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !151 !taffo.funinfo !158 !taffo.sourceFunction !62 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !68
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !93
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !68
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !93
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.initweight !95, !taffo.info !53
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.initweight !115, !taffo.info !53
  %1 = load float, float* %arrayidx4, align 4, !taffo.initweight !116, !taffo.info !53
  %conv = sitofp i32 %factor to float, !taffo.info !109
  %mul = fmul float %1, %conv, !taffo.initweight !153, !taffo.info !117
  %2 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.initweight !95, !taffo.info !53
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.initweight !115, !taffo.info !53
  store float %mul, float* %arrayidx6, align 4, !taffo.initweight !116, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !93, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !159

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !93, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !160

for.end9:                                         ; preds = %for.cond
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
!7 = !{double 0.000000e+00, double 8.532000e+04}
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
!32 = !{void (float*, i32)* @scale_scalar.1}
!33 = !{i32 -1, i32 -1, i32 -1}
!34 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!35 = distinct !{!35, !29}
!36 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = !{void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.5}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!42 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = !{}
!47 = !{i1 true}
!48 = !{i32 0}
!49 = !{i1 false, !50, i1 false, i2 -1}
!50 = !{double 1.500000e+00, double 1.500000e+00}
!51 = !{i1 false, !52, i1 false, i2 -1}
!52 = !{double 0.000000e+00, double 1.280000e+02}
!53 = !{i1 false, !7, i1 false, i2 -1}
!54 = !{!"B"}
!55 = !{i32 1}
!56 = !{void (i32, i32, float*, [10 x float]*, [16 x float]*)* @init_array}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{void (float*, i32)* @scale_scalar}
!59 = !{i1 false, i1 false, i1 false}
!60 = !{i32 2}
!61 = !{i32 3}
!62 = !{void (i32, i32, float*, i32)* @scale_2d}
!63 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!64 = !{i1 false}
!65 = !{void (i32, i32, float, [10 x float]*, [16 x float]*)* @kernel_trmm}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 1.100000e+01}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 1.000000e+00}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 1.870000e+02}
!72 = !{i32 4}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.870000e+02}
!75 = distinct !{!75, !29}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 1.100000e+01}
!78 = distinct !{!78, !29}
!79 = !{i1 false, i1 false, i1 false, i1 false}
!80 = !{void (i32, i32, float*, [10 x float]*, [16 x float]*)* @init_array.3}
!81 = !{!82, i1 false}
!82 = !{i1 false, !50, i1 false, i2 0}
!83 = !{i1 false, !9, i1 false, i2 1}
!84 = !{i1 false, !85, i1 false, i2 1}
!85 = !{double 0.000000e+00, double 1.600000e+01}
!86 = !{i32 5}
!87 = !{i1 false, i1 false, i1 false, i2 1}
!88 = !{!89, i1 false}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 0.000000e+00, double 0.000000e+00}
!91 = distinct !{!91, !29}
!92 = !{!93, i1 false}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 1.000000e+00, double 1.000000e+00}
!95 = !{i32 6}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !29}
!98 = !{void (i32, i32, float, [10 x float]*, [16 x float]*)* @kernel_trmm.2}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, !29}
!102 = !{i32 1, !22, i32 1, !103, i32 1, !6}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 1.600000e+01, double 1.600000e+01}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = !{i32 1, i32 -1}
!108 = !{i32 1, !49, i32 1, !109}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 1.280000e+02, double 1.280000e+02}
!111 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2}
!112 = !{i32 1, !22, i32 1, !103, i32 1, !49, i32 1, !51, i32 1, !53}
!113 = !{i1 false, !114, i1 false, i2 0}
!114 = !{double 1.000000e+00, double 2.000000e+00}
!115 = !{i32 7}
!116 = !{i32 8}
!117 = !{i1 false, !118, i1 false, i2 -1}
!118 = !{double 0.000000e+00, double 0x4164D48000000000}
!119 = !{i1 false, !120, i1 false, i2 -1}
!120 = !{double 0.000000e+00, double 0x4164FE2900000000}
!121 = distinct !{!121, !29}
!122 = !{i1 false, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 1.279800e+05}
!124 = distinct !{!124, !29}
!125 = distinct !{!125, !29}
!126 = !{i32 -1, i32 -1, i32 1, i32 2, i32 2}
!127 = !{i1 false, !67, i1 false, i2 1}
!128 = !{i1 false, !69, i1 false, i2 1}
!129 = !{i1 false, !130, i1 false, i2 1}
!130 = !{double 0.000000e+00, double 1.700000e+01}
!131 = !{i1 false, !132, i1 false, i2 1}
!132 = !{double 0.000000e+00, double 2.600000e+01}
!133 = !{i1 false, !134, i1 false, i2 1}
!134 = !{double 0.000000e+00, double 9.000000e+00}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 9.000000e-01}
!137 = !{i1 false, !52, i1 false, i2 1}
!138 = !{i1 false, !139, i1 false, i2 1}
!139 = !{double 1.000000e+00, double 1.700000e+01}
!140 = distinct !{!140, !29}
!141 = !{i1 false, !142, i1 false, i2 1}
!142 = !{double -1.600000e+01, double 1.000000e+01}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 0.000000e+00, double 1.500000e+01}
!145 = !{i1 false, !146, i1 false, i2 1}
!146 = !{double 0.000000e+00, double 9.375000e-01}
!147 = !{i1 false, !7, i1 false, i2 1}
!148 = distinct !{!148, !29}
!149 = !{i1 false, !77, i1 false, i2 1}
!150 = distinct !{!150, !29}
!151 = !{i32 -1, i32 -1, i32 3, i32 -1}
!152 = !{i32 1, !22, i32 1, !22, i32 1, !51, i32 1, !109}
!153 = !{i32 9}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double 0.000000e+00, double 1.638400e+04}
!156 = distinct !{!156, !29}
!157 = distinct !{!157, !29}
!158 = !{i32 1, !22, i32 1, !103, i32 1, !53, i32 1, !109}
!159 = distinct !{!159, !29}
!160 = distinct !{!160, !29}
