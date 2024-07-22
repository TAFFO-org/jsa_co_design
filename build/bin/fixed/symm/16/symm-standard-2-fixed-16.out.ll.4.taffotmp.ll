; ModuleID = './build/bin/fixed/symm/16/symm-standard-2-fixed-16.out.ll.3.taffotmp.ll'
source_filename = "./sources/symm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.9 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.equivalentChild !26 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !27 !taffo.funinfo !28 {
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 !taffo.equivalentChild !32 {
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
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !33

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !34

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !35 !taffo.funinfo !36 {
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
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !37

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !38

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !39

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !40 !taffo.funinfo !40 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !40 !taffo.funinfo !40 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !41 {
entry:
  %alpha = alloca float, align 4, !taffo.info !42, !taffo.initweight !45
  %beta = alloca float, align 4, !taffo.info !46, !taffo.initweight !45
  %C = alloca [10 x [16 x float]], align 4, !taffo.info !48, !taffo.initweight !45, !taffo.target !50
  %A = alloca [10 x [10 x float]], align 4, !taffo.info !51, !taffo.initweight !45
  %B = alloca [10 x [16 x float]], align 4, !taffo.info !54, !taffo.initweight !45
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !57, !taffo.initweight !58
  %beta2 = bitcast float* %beta to i8*, !taffo.info !57, !taffo.initweight !58
  %C3 = bitcast [10 x [16 x float]]* %C to i8*, !taffo.info !59, !taffo.initweight !58, !taffo.target !50
  %A4 = bitcast [10 x [10 x float]]* %A to i8*, !taffo.info !60, !taffo.initweight !58
  %B5 = bitcast [10 x [16 x float]]* %B to i8*, !taffo.info !61, !taffo.initweight !58
  %arraydecay = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !58, !taffo.target !50
  %arraydecay6 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !58
  %arraydecay7 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !54, !taffo.initweight !58
  call void @init_array.4(i32 noundef 10, i32 noundef 16, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [16 x float]* noundef %arraydecay7), !taffo.info !62, !taffo.initweight !58, !taffo.constinfo !63, !taffo.originalCall !64
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 2), !taffo.info !62, !taffo.initweight !58, !taffo.constinfo !65, !taffo.originalCall !66
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 2), !taffo.info !67, !taffo.initweight !58, !taffo.constinfo !65, !taffo.originalCall !66
  %arraydecay8 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !58, !taffo.target !50
  %0 = bitcast [16 x float]* %arraydecay8 to float*, !taffo.info !48, !taffo.initweight !68, !taffo.target !50
  call void @scale_2d.5(i32 noundef 10, i32 noundef 16, float* noundef %0, i32 noundef 2), !taffo.info !69, !taffo.initweight !70, !taffo.constinfo !71, !taffo.target !50, !taffo.originalCall !72
  %arraydecay9 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !58
  %1 = bitcast [10 x float]* %arraydecay9 to float*, !taffo.info !51, !taffo.initweight !68
  call void @scale_2d.6(i32 noundef 10, i32 noundef 10, float* noundef %1, i32 noundef 2), !taffo.info !73, !taffo.initweight !70, !taffo.constinfo !71, !taffo.originalCall !72
  %arraydecay10 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !54, !taffo.initweight !58
  %2 = bitcast [16 x float]* %arraydecay10 to float*, !taffo.info !54, !taffo.initweight !68
  call void @scale_2d.7(i32 noundef 10, i32 noundef 16, float* noundef %2, i32 noundef 2), !taffo.info !74, !taffo.initweight !70, !taffo.constinfo !71, !taffo.originalCall !72
  call void @timer_start(), !taffo.constinfo !75
  %3 = load float, float* %alpha, align 4, !taffo.info !76, !taffo.initweight !58
  %4 = load float, float* %beta, align 4, !taffo.info !46, !taffo.initweight !58
  %arraydecay11 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !58, !taffo.target !50
  %arraydecay12 = getelementptr inbounds [10 x [10 x float]], [10 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !58
  %arraydecay13 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !54, !taffo.initweight !58
  call void @kernel_symm.3(i32 noundef 10, i32 noundef 16, float noundef %3, float noundef %4, [16 x float]* noundef %arraydecay11, [10 x float]* noundef %arraydecay12, [16 x float]* noundef %arraydecay13), !taffo.info !62, !taffo.initweight !68, !taffo.constinfo !63, !taffo.originalCall !78
  call void @timer_stop(), !taffo.constinfo !75
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !79
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !83
  %cmp15 = icmp slt i32 %j.0, 16, !taffo.info !81
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.info !48, !taffo.initweight !58, !taffo.target !50
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !68, !taffo.target !50
  %5 = load float, float* %arrayidx17, align 4, !taffo.info !48, !taffo.initweight !70, !taffo.target !50
  %arrayidx18 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !0
  store float %5, float* %arrayidx19, align 4, !taffo.info !69, !taffo.initweight !85, !taffo.target !50
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond14, !llvm.loop !88

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !89, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !91

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !92
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !27 !taffo.funinfo !93 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !81
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !96
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !81
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !96
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !98
  %add = add nsw i32 %mul, %j.0, !taffo.info !98
  %rem = srem i32 %add, 20, !taffo.info !98, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !96
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !65
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !92
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !100

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !101

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !102 !taffo.funinfo !103 !taffo.sourceFunction !66 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm.3(i32 noundef %m, i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !104 !taffo.funinfo !105 !taffo.sourceFunction !78 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc37, %for.inc36 ], !taffo.info !81
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !96
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc33, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc34, %for.inc33 ], !taffo.info !81
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !96
  br i1 %cmp2, label %for.body3, label %for.end35

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !81
  %temp2.0 = phi float [ 0.000000e+00, %for.body3 ], [ %add18, %for.inc ], !taffo.info !106
  %cmp5 = icmp slt i32 %k.0, %i.0, !taffo.info !98
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !54, !taffo.initweight !109
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !54, !taffo.initweight !110
  %0 = load float, float* %arrayidx7, align 4, !taffo.info !111, !taffo.initweight !112
  %mul = fmul float %alpha, %0, !taffo.info !113, !taffo.initweight !109
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !51, !taffo.initweight !109
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.info !51, !taffo.initweight !110
  %1 = load float, float* %arrayidx9, align 4, !taffo.info !51, !taffo.initweight !112
  %mul10 = fmul float %mul, %1, !taffo.info !115, !taffo.initweight !110
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %k.0, !taffo.info !48, !taffo.initweight !109
  %arrayidx12 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !110
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !48, !taffo.initweight !112
  %add = fadd float %2, %mul10, !taffo.info !117, !taffo.initweight !112
  store float %add, float* %arrayidx12, align 4, !taffo.info !69, !taffo.initweight !112
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %k.0, !taffo.info !54, !taffo.initweight !109
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !54, !taffo.initweight !110
  %3 = load float, float* %arrayidx14, align 4, !taffo.info !54, !taffo.initweight !112
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !51, !taffo.initweight !109
  %arrayidx16 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx15, i32 0, i32 %k.0, !taffo.info !51, !taffo.initweight !110
  %4 = load float, float* %arrayidx16, align 4, !taffo.info !51, !taffo.initweight !112
  %mul17 = fmul float %3, %4, !taffo.info !119, !taffo.initweight !120
  %add18 = fadd float %temp2.0, %mul17, !taffo.info !119, !taffo.initweight !121
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !122

for.end:                                          ; preds = %for.cond4
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !48, !taffo.initweight !109
  %arrayidx20 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx19, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !110
  %5 = load float, float* %arrayidx20, align 4, !taffo.info !48, !taffo.initweight !112
  %mul21 = fmul float %beta, %5, !taffo.info !123, !taffo.initweight !109
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !54, !taffo.initweight !109
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.info !54, !taffo.initweight !110
  %6 = load float, float* %arrayidx23, align 4, !taffo.info !111, !taffo.initweight !112
  %mul24 = fmul float %alpha, %6, !taffo.info !113, !taffo.initweight !109
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !51, !taffo.initweight !109
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %i.0, !taffo.info !51, !taffo.initweight !110
  %7 = load float, float* %arrayidx26, align 4, !taffo.info !51, !taffo.initweight !112
  %mul27 = fmul float %mul24, %7, !taffo.info !115, !taffo.initweight !110
  %add28 = fadd float %mul21, %mul27, !taffo.info !125, !taffo.initweight !110
  %mul29 = fmul float %alpha, %temp2.0, !taffo.info !128, !taffo.initweight !109
  %add30 = fadd float %add28, %mul29, !taffo.info !129, !taffo.initweight !110
  %arrayidx31 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !48, !taffo.initweight !109
  %arrayidx32 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx31, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !110
  store float %add30, float* %arrayidx32, align 4, !taffo.info !62, !taffo.initweight !112
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %inc34 = add nsw i32 %j.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !131

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %inc37 = add nsw i32 %i.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !132

for.end38:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %m, i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [16 x float]* noundef %B) #0 !taffo.initweight !133 !taffo.funinfo !134 !taffo.sourceFunction !64 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !62, !taffo.initweight !85, !taffo.constinfo !135
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !67, !taffo.initweight !85, !taffo.constinfo !137
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !140, !taffo.initweight !45
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !141, !taffo.initweight !68
  br i1 %cmp, label %for.body, label %for.end17, !taffo.info !142, !taffo.initweight !70

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !143, !taffo.initweight !45
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !141, !taffo.initweight !68
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !145, !taffo.initweight !70

for.body5:                                        ; preds = %for.cond3
  %add = add nsw i32 %i.0, %j.0, !taffo.info !147, !taffo.initweight !68
  %rem = srem i32 %add, 100, !taffo.info !147, !taffo.initweight !70, !taffo.constinfo !21
  %conv = sitofp i32 %rem to float, !taffo.info !149, !taffo.initweight !85
  %conv6 = sitofp i32 %m to float, !taffo.info !151
  %div = fdiv float %conv, %conv6, !taffo.info !152, !taffo.initweight !109
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !154, !taffo.initweight !68
  %arrayidx7 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !154, !taffo.initweight !68
  store float %div, float* %arrayidx7, align 4, !taffo.info !155, !taffo.initweight !70
  %add8 = add nsw i32 %n, %i.0, !taffo.info !156, !taffo.initweight !68
  %sub = sub nsw i32 %add8, %j.0, !taffo.info !147, !taffo.initweight !68
  %rem9 = srem i32 %sub, 100, !taffo.info !147, !taffo.initweight !70, !taffo.constinfo !21
  %conv10 = sitofp i32 %rem9 to float, !taffo.info !149, !taffo.initweight !85
  %conv11 = sitofp i32 %m to float, !taffo.info !151
  %div12 = fdiv float %conv10, %conv11, !taffo.info !152, !taffo.initweight !109
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !158, !taffo.initweight !68
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !158, !taffo.initweight !68
  store float %div12, float* %arrayidx14, align 4, !taffo.info !155, !taffo.initweight !70
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !159, !taffo.initweight !68, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !161

for.end:                                          ; preds = %for.cond3
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !162, !taffo.initweight !68, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !163

for.end17:                                        ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc46, %for.end17
  %i.1 = phi i32 [ 0, %for.end17 ], [ %inc47, %for.inc46 ], !taffo.info !140, !taffo.initweight !45
  %cmp19 = icmp slt i32 %i.1, %m, !taffo.info !141, !taffo.initweight !68
  br i1 %cmp19, label %for.body21, label %for.end48, !taffo.info !142, !taffo.initweight !70

for.body21:                                       ; preds = %for.cond18
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.body21
  %j.1 = phi i32 [ 0, %for.body21 ], [ %inc34, %for.inc33 ], !taffo.info !143, !taffo.initweight !45
  %cmp23 = icmp sle i32 %j.1, %i.1, !taffo.info !141, !taffo.initweight !68
  br i1 %cmp23, label %for.body25, label %for.end35, !taffo.info !142, !taffo.initweight !70

for.body25:                                       ; preds = %for.cond22
  %add26 = add nsw i32 %i.1, %j.1, !taffo.info !147, !taffo.initweight !68
  %rem27 = srem i32 %add26, 100, !taffo.info !147, !taffo.initweight !70, !taffo.constinfo !21
  %conv28 = sitofp i32 %rem27 to float, !taffo.info !149, !taffo.initweight !85
  %conv29 = sitofp i32 %m to float, !taffo.info !151
  %div30 = fdiv float %conv28, %conv29, !taffo.info !152, !taffo.initweight !109
  %arrayidx31 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.1, !taffo.info !164, !taffo.initweight !68
  %arrayidx32 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx31, i32 0, i32 %j.1, !taffo.info !164, !taffo.initweight !68
  store float %div30, float* %arrayidx32, align 4, !taffo.info !155, !taffo.initweight !70
  br label %for.inc33

for.inc33:                                        ; preds = %for.body25
  %inc34 = add nsw i32 %j.1, 1, !taffo.info !159, !taffo.initweight !68, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !165

for.end35:                                        ; preds = %for.cond22
  %add36 = add nsw i32 %i.1, 1, !taffo.info !162, !taffo.initweight !68, !taffo.constinfo !21
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc43, %for.end35
  %j.2 = phi i32 [ %add36, %for.end35 ], [ %inc44, %for.inc43 ], !taffo.info !143, !taffo.initweight !45
  %cmp38 = icmp slt i32 %j.2, %m, !taffo.info !141, !taffo.initweight !68
  br i1 %cmp38, label %for.body40, label %for.end45, !taffo.info !145, !taffo.initweight !70

for.body40:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.1, !taffo.info !164, !taffo.initweight !68
  %arrayidx42 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx41, i32 0, i32 %j.2, !taffo.info !164, !taffo.initweight !68
  store float -9.990000e+02, float* %arrayidx42, align 4, !taffo.info !155, !taffo.initweight !70, !taffo.constinfo !166
  br label %for.inc43

for.inc43:                                        ; preds = %for.body40
  %inc44 = add nsw i32 %j.2, 1, !taffo.info !159, !taffo.initweight !68, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !169

for.end45:                                        ; preds = %for.cond37
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %inc47 = add nsw i32 %i.1, 1, !taffo.info !162, !taffo.initweight !68, !taffo.constinfo !21
  br label %for.cond18, !llvm.loop !170

for.end48:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !171 !taffo.funinfo !172 !taffo.sourceFunction !72 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !81
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !96
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !81
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !96
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !98
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !48, !taffo.initweight !110
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !48, !taffo.initweight !112
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !173, !taffo.initweight !120
  %conv = sitofp i32 %factor to float, !taffo.info !175
  %mul = fmul float %1, %conv, !taffo.info !176, !taffo.initweight !121
  %2 = mul nsw i32 %i.0, %m, !taffo.info !98
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !48, !taffo.initweight !110
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !48, !taffo.initweight !112
  store float %mul, float* %arrayidx6, align 4, !taffo.info !69, !taffo.initweight !120
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !178

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !179

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !171 !taffo.funinfo !180 !taffo.sourceFunction !72 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !81
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !96
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !81
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !96
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !98
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !51, !taffo.initweight !110
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !51, !taffo.initweight !112
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !181, !taffo.initweight !120
  %conv = sitofp i32 %factor to float, !taffo.info !175
  %mul = fmul float %1, %conv, !taffo.info !183, !taffo.initweight !121
  %2 = mul nsw i32 %i.0, %m, !taffo.info !98
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !51, !taffo.initweight !110
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !51, !taffo.initweight !112
  store float %mul, float* %arrayidx6, align 4, !taffo.info !73, !taffo.initweight !120
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !185

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !186

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.7(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !171 !taffo.funinfo !187 !taffo.sourceFunction !72 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !81
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !96
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !81
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !96
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !98
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !54, !taffo.initweight !110
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !54, !taffo.initweight !112
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !111, !taffo.initweight !120
  %conv = sitofp i32 %factor to float, !taffo.info !188
  %mul = fmul float %1, %conv, !taffo.info !189, !taffo.initweight !121
  %2 = mul nsw i32 %i.0, %m, !taffo.info !98
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !54, !taffo.initweight !110
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !54, !taffo.initweight !112
  store float %mul, float* %arrayidx6, align 4, !taffo.info !74, !taffo.initweight !120
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !191

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !96, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !192

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x4065A51EC0B56755}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"NumRegisterParameters", i32 0}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!13 = !{i32 -1}
!14 = !{i32 0, i1 false}
!15 = !{i1 false, !16}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+01, double 1.000000e+01}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 2.000000e+00, double 2.000000e+00}
!21 = !{i1 false, i1 false}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{i32 -1, i32 -1}
!25 = !{i32 0, i1 false, i32 0, i1 false}
!26 = !{void (float*, i32)* @scale_scalar.1, void (float*, i32)* @scale_scalar.1}
!27 = !{i32 -1, i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = !{void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.7}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!36 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = !{}
!41 = !{i1 true}
!42 = !{!43, !44, i1 false, i2 -1}
!43 = !{!"fixp", i32 32, i32 30}
!44 = !{double 1.500000e+00, double 1.500000e+00}
!45 = !{i32 0}
!46 = !{!43, !47, i1 false, i2 -1}
!47 = !{double 1.200000e+00, double 1.200000e+00}
!48 = !{!49, !1, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 24}
!50 = !{!"C"}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 -32, i32 20}
!53 = !{double -1.998000e+03, double 3.600000e+00}
!54 = !{!55, !56, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 29}
!56 = !{double 2.000000e-01, double 5.000000e+00}
!57 = !{!43, i1 false, i1 false, i2 -1}
!58 = !{i32 1}
!59 = !{!49, i1 false, i1 false, i2 -1}
!60 = !{!52, i1 false, i1 false, i2 -1}
!61 = !{!55, i1 false, i1 false, i2 -1}
!62 = !{i1 false, !44, i1 false, i2 -1}
!63 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!64 = distinct !{null}
!65 = !{i1 false, i1 false, i1 false}
!66 = !{void (float*, i32)* @scale_scalar}
!67 = !{i1 false, !47, i1 false, i2 -1}
!68 = !{i32 2}
!69 = !{i1 false, !1, i1 false, i2 -1}
!70 = !{i32 3}
!71 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!72 = !{void (i32, i32, float*, i32)* @scale_2d}
!73 = !{i1 false, !53, i1 false, i2 -1}
!74 = !{i1 false, !56, i1 false, i2 -1}
!75 = !{i1 false}
!76 = !{!77, !44, i1 false, i2 -1}
!77 = !{!"fixp", i32 32, i32 28}
!78 = distinct !{null}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 0.000000e+00, double 1.100000e+01}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0.000000e+00, double 1.000000e+00}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 0.000000e+00, double 1.870000e+02}
!85 = !{i32 4}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 1.000000e+00, double 1.870000e+02}
!88 = distinct !{!88, !23}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.000000e+00, double 1.100000e+01}
!91 = distinct !{!91, !23}
!92 = !{i1 false, i1 false, i1 false, i1 false}
!93 = !{i32 1, !16, i32 1, !94, i32 1, !0}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 1.600000e+01, double 1.600000e+01}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 1.000000e+00, double 1.000000e+00}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 0.000000e+00, double 0.000000e+00}
!100 = distinct !{!100, !23}
!101 = distinct !{!101, !23}
!102 = !{i32 1, i32 -1}
!103 = !{i32 1, !42, i32 1, !19}
!104 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!105 = !{i32 1, !16, i32 1, !94, i32 1, !76, i32 1, !46, i32 1, !48, i32 1, !51, i32 1, !54}
!106 = !{!107, !108, i1 false, i2 1}
!107 = !{!"fixp", i32 -32, i32 17}
!108 = !{double -9.990000e+03, double 1.800000e+01}
!109 = !{i32 5}
!110 = !{i32 6}
!111 = !{!77, !56, i1 false, i2 -1}
!112 = !{i32 7}
!113 = !{!77, !114, i1 false, i2 -1}
!114 = !{double 0x3FD3333333333334, double 7.500000e+00}
!115 = !{!107, !116, i1 false, i2 -1}
!116 = !{double -1.498500e+04, double 2.700000e+01}
!117 = !{!107, !118, i1 false, i2 -1}
!118 = !{double -1.498500e+04, double 0x4069051EC0B56755}
!119 = !{!107, !108, i1 false, i2 -1}
!120 = !{i32 8}
!121 = !{i32 9}
!122 = distinct !{!122, !23}
!123 = !{!49, !124, i1 false, i2 -1}
!124 = !{double 0.000000e+00, double 0x4069F9581A7348CC}
!125 = !{!126, !127, i1 false, i2 -1}
!126 = !{!"fixp", i32 -32, i32 16}
!127 = !{double -1.498500e+04, double 0x406D59581A7348CC}
!128 = !{!126, !116, i1 false, i2 -1}
!129 = !{!126, !130, i1 false, i2 -1}
!130 = !{double -2.997000e+04, double 0x40705CAC0D39A466}
!131 = distinct !{!131, !23}
!132 = distinct !{!132, !23}
!133 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!134 = !{i32 1, !16, i32 1, !94, i32 1, !42, i32 1, !46, i32 1, !48, i32 1, !51, i32 1, !54}
!135 = !{!136, i1 false}
!136 = !{i1 false, !44, i1 false, i2 0}
!137 = !{!138, i1 false}
!138 = !{i1 false, !139, i1 false, i2 0}
!139 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!140 = !{i1 false, !80, i1 false, i2 1}
!141 = !{i1 false, !82, i1 false, i2 1}
!142 = !{i1 false, !3, i1 false, i2 1}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 0.000000e+00, double 1.700000e+01}
!145 = !{i1 false, !146, i1 false, i2 1}
!146 = !{double 0.000000e+00, double 1.600000e+01}
!147 = !{i1 false, !148, i1 false, i2 1}
!148 = !{double 0.000000e+00, double 2.600000e+01}
!149 = !{!150, !148, i1 false, i2 1}
!150 = !{!"fixp", i32 32, i32 27}
!151 = !{!77, !17, i1 false, i2 1}
!152 = !{!77, !153, i1 false, i2 1}
!153 = !{double 0.000000e+00, double 2.600000e+00}
!154 = !{!49, !1, i1 false, i2 1}
!155 = !{i1 false, i1 false, i1 false, i2 1}
!156 = !{i1 false, !157, i1 false, i2 1}
!157 = !{double 1.600000e+01, double 2.600000e+01}
!158 = !{!55, !56, i1 false, i2 1}
!159 = !{i1 false, !160, i1 false, i2 1}
!160 = !{double 1.000000e+00, double 1.700000e+01}
!161 = distinct !{!161, !23}
!162 = !{i1 false, !90, i1 false, i2 1}
!163 = distinct !{!163, !23}
!164 = !{!52, !53, i1 false, i2 1}
!165 = distinct !{!165, !23}
!166 = !{!167, i1 false}
!167 = !{i1 false, !168, i1 false, i2 0}
!168 = !{double -9.990000e+02, double -9.990000e+02}
!169 = distinct !{!169, !23}
!170 = distinct !{!170, !23}
!171 = !{i32 -1, i32 -1, i32 3, i32 -1}
!172 = !{i32 1, !16, i32 1, !94, i32 1, !48, i32 1, !19}
!173 = !{!174, !1, i1 false, i2 -1}
!174 = !{!"fixp", i32 32, i32 23}
!175 = !{!43, !20, i1 false, i2 1}
!176 = !{!174, !177, i1 false, i2 -1}
!177 = !{double 0.000000e+00, double 0x4075A51EC0B56755}
!178 = distinct !{!178, !23}
!179 = distinct !{!179, !23}
!180 = !{i32 1, !16, i32 1, !16, i32 1, !51, i32 1, !19}
!181 = !{!182, !53, i1 false, i2 -1}
!182 = !{!"fixp", i32 -32, i32 19}
!183 = !{!182, !184, i1 false, i2 -1}
!184 = !{double -3.996000e+03, double 7.200000e+00}
!185 = distinct !{!185, !23}
!186 = distinct !{!186, !23}
!187 = !{i32 1, !16, i32 1, !94, i32 1, !54, i32 1, !19}
!188 = !{!77, !20, i1 false, i2 1}
!189 = !{!77, !190, i1 false, i2 -1}
!190 = !{double 4.000000e-01, double 1.000000e+01}
!191 = distinct !{!191, !23}
!192 = distinct !{!192, !23}
