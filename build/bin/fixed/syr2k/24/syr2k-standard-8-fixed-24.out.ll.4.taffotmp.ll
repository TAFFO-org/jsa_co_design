; ModuleID = './build/bin/fixed/syr2k/24/syr2k-standard-8-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/syr2k.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
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
  %C = alloca [16 x [16 x float]], align 4, !taffo.info !48, !taffo.initweight !45, !taffo.target !50
  %A = alloca [16 x [10 x float]], align 4, !taffo.info !51, !taffo.initweight !45
  %B = alloca [16 x [10 x float]], align 4, !taffo.info !54, !taffo.initweight !45
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !56, !taffo.initweight !57
  %beta2 = bitcast float* %beta to i8*, !taffo.info !56, !taffo.initweight !57
  %C3 = bitcast [16 x [16 x float]]* %C to i8*, !taffo.info !58, !taffo.initweight !57, !taffo.target !50
  %A4 = bitcast [16 x [10 x float]]* %A to i8*, !taffo.info !59, !taffo.initweight !57
  %B5 = bitcast [16 x [10 x float]]* %B to i8*, !taffo.info !59, !taffo.initweight !57
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %arraydecay6 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  call void @init_array.4(i32 noundef 16, i32 noundef 10, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay6, [10 x float]* noundef %arraydecay7), !taffo.info !60, !taffo.initweight !57, !taffo.constinfo !61, !taffo.originalCall !62
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 8), !taffo.info !60, !taffo.initweight !57, !taffo.constinfo !63, !taffo.originalCall !64
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 8), !taffo.info !65, !taffo.initweight !57, !taffo.constinfo !63, !taffo.originalCall !64
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %0 = bitcast [16 x float]* %arraydecay8 to float*, !taffo.info !48, !taffo.initweight !66, !taffo.target !50
  call void @scale_2d.5(i32 noundef 16, i32 noundef 16, float* noundef %0, i32 noundef 8), !taffo.info !67, !taffo.initweight !68, !taffo.constinfo !69, !taffo.target !50, !taffo.originalCall !70
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57
  %1 = bitcast [10 x float]* %arraydecay9 to float*, !taffo.info !51, !taffo.initweight !66
  call void @scale_2d.6(i32 noundef 16, i32 noundef 10, float* noundef %1, i32 noundef 8), !taffo.info !71, !taffo.initweight !68, !taffo.constinfo !69, !taffo.originalCall !70
  %arraydecay10 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  %2 = bitcast [10 x float]* %arraydecay10 to float*, !taffo.info !54, !taffo.initweight !66
  call void @scale_2d.6(i32 noundef 16, i32 noundef 10, float* noundef %2, i32 noundef 8), !taffo.info !72, !taffo.initweight !68, !taffo.constinfo !69, !taffo.originalCall !70
  call void @timer_start(), !taffo.constinfo !73
  %3 = load float, float* %alpha, align 4, !taffo.info !74, !taffo.initweight !57
  %4 = load float, float* %beta, align 4, !taffo.info !46, !taffo.initweight !57
  %arraydecay11 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %arraydecay12 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57
  %arraydecay13 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  call void @kernel_syr2k.3(i32 noundef 16, i32 noundef 10, float noundef %3, float noundef %4, [16 x float]* noundef %arraydecay11, [10 x float]* noundef %arraydecay12, [10 x float]* noundef %arraydecay13), !taffo.info !60, !taffo.initweight !66, !taffo.constinfo !61, !taffo.originalCall !75
  call void @timer_stop(), !taffo.constinfo !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !78
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !80
  %cmp15 = icmp slt i32 %j.0, 16, !taffo.info !78
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !66, !taffo.target !50
  %5 = load float, float* %arrayidx17, align 4, !taffo.info !48, !taffo.initweight !68, !taffo.target !50
  %arrayidx18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !0
  store float %5, float* %arrayidx19, align 4, !taffo.info !67, !taffo.initweight !82, !taffo.target !50
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !83, !taffo.constinfo !21
  br label %for.cond14, !llvm.loop !85

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !86, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !88

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !63
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !24 !taffo.funinfo !89 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !78
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !92
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !94
  %add = add nsw i32 %mul, %j.0, !taffo.info !94
  %rem = srem i32 %add, 20, !taffo.info !94, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !92
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)), !taffo.constinfo !63
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !96
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !97

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !98

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !64 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.3(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !103 !taffo.funinfo !104 !taffo.sourceFunction !75 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !78
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !78
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !48, !taffo.initweight !105
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !106
  %0 = load float, float* %arrayidx4, align 4, !taffo.info !107, !taffo.initweight !109
  %mul = fmul float %0, %beta, !taffo.info !110, !taffo.initweight !105
  store float %mul, float* %arrayidx4, align 4, !taffo.info !65, !taffo.initweight !106
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !112

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !78
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !92
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc27, %for.inc26 ], !taffo.info !78
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !78
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1, !taffo.info !51, !taffo.initweight !105
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !51, !taffo.initweight !106
  %1 = load float, float* %arrayidx12, align 4, !taffo.info !51, !taffo.initweight !109
  %mul13 = fmul float %1, %alpha, !taffo.info !113, !taffo.initweight !105
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0, !taffo.info !54, !taffo.initweight !105
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0, !taffo.info !54, !taffo.initweight !106
  %2 = load float, float* %arrayidx15, align 4, !taffo.info !54, !taffo.initweight !109
  %mul16 = fmul float %mul13, %2, !taffo.info !115, !taffo.initweight !106
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %j.1, !taffo.info !54, !taffo.initweight !105
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx17, i32 0, i32 %k.0, !taffo.info !54, !taffo.initweight !106
  %3 = load float, float* %arrayidx18, align 4, !taffo.info !54, !taffo.initweight !109
  %mul19 = fmul float %3, %alpha, !taffo.info !118, !taffo.initweight !105
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !51, !taffo.initweight !105
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx20, i32 0, i32 %k.0, !taffo.info !51, !taffo.initweight !106
  %4 = load float, float* %arrayidx21, align 4, !taffo.info !51, !taffo.initweight !109
  %mul22 = fmul float %mul19, %4, !taffo.info !115, !taffo.initweight !106
  %add = fadd float %mul16, %mul22, !taffo.info !120, !taffo.initweight !109
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !48, !taffo.initweight !105
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i32 0, i32 %j.1, !taffo.info !48, !taffo.initweight !106
  %5 = load float, float* %arrayidx24, align 4, !taffo.info !107, !taffo.initweight !109
  %add25 = fadd float %5, %add, !taffo.info !122, !taffo.initweight !124
  store float %add25, float* %arrayidx24, align 4, !taffo.info !67, !taffo.initweight !109
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !125

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %k.0, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !126

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i.0, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !127

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !128 !taffo.funinfo !129 !taffo.sourceFunction !62 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !60, !taffo.initweight !82, !taffo.constinfo !130
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !65, !taffo.initweight !82, !taffo.constinfo !132
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !135, !taffo.initweight !45
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !136, !taffo.initweight !66
  br i1 %cmp, label %for.body, label %for.end18, !taffo.info !137, !taffo.initweight !68

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !139, !taffo.initweight !45
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !136, !taffo.initweight !66
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !141, !taffo.initweight !68

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !142, !taffo.initweight !66
  %add = add nsw i32 %mul, 1, !taffo.info !144, !taffo.initweight !68, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !146, !taffo.initweight !82
  %conv = sitofp i32 %rem to float, !taffo.info !148, !taffo.initweight !105
  %conv6 = sitofp i32 %n to float, !taffo.info !149
  %div = fdiv float %conv, %conv6, !taffo.info !151, !taffo.initweight !106
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !154, !taffo.initweight !66
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !154, !taffo.initweight !66
  store float %div, float* %arrayidx7, align 4, !taffo.info !155, !taffo.initweight !68
  %mul8 = mul nsw i32 %i.0, %j.0, !taffo.info !142, !taffo.initweight !66
  %add9 = add nsw i32 %mul8, 2, !taffo.info !156, !taffo.initweight !68, !taffo.constinfo !21
  %rem10 = srem i32 %add9, %m, !taffo.info !158, !taffo.initweight !82
  %conv11 = sitofp i32 %rem10 to float, !taffo.info !160, !taffo.initweight !105
  %conv12 = sitofp i32 %m to float, !taffo.info !161
  %div13 = fdiv float %conv11, %conv12, !taffo.info !162, !taffo.initweight !106
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0, !taffo.info !164, !taffo.initweight !66
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !164, !taffo.initweight !66
  store float %div13, float* %arrayidx15, align 4, !taffo.info !155, !taffo.initweight !68
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !165, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !167

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !168, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !169

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc39, %for.inc38 ], !taffo.info !135, !taffo.initweight !45
  %cmp20 = icmp slt i32 %i.1, %n, !taffo.info !136, !taffo.initweight !66
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.info !137, !taffo.initweight !68

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc36, %for.inc35 ], !taffo.info !139, !taffo.initweight !45
  %cmp24 = icmp slt i32 %j.1, %n, !taffo.info !170, !taffo.initweight !66
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.info !141, !taffo.initweight !68

for.body26:                                       ; preds = %for.cond23
  %mul27 = mul nsw i32 %i.1, %j.1, !taffo.info !142, !taffo.initweight !66
  %add28 = add nsw i32 %mul27, 3, !taffo.info !171, !taffo.initweight !68, !taffo.constinfo !21
  %rem29 = srem i32 %add28, %n, !taffo.info !146, !taffo.initweight !82
  %conv30 = sitofp i32 %rem29 to float, !taffo.info !148, !taffo.initweight !105
  %conv31 = sitofp i32 %m to float, !taffo.info !161
  %div32 = fdiv float %conv30, %conv31, !taffo.info !173, !taffo.initweight !106
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.info !175, !taffo.initweight !66
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.info !175, !taffo.initweight !66
  store float %div32, float* %arrayidx34, align 4, !taffo.info !155, !taffo.initweight !68
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %j.1, 1, !taffo.info !165, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !176

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.1, 1, !taffo.info !168, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond19, !llvm.loop !177

for.end40:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !178 !taffo.funinfo !179 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !78
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !92
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !94
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !48, !taffo.initweight !106
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !48, !taffo.initweight !109
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !48, !taffo.initweight !124
  %conv = sitofp i32 %factor to float, !taffo.info !180
  %mul = fmul float %1, %conv, !taffo.info !181, !taffo.initweight !184
  %2 = mul nsw i32 %i.0, %m, !taffo.info !94
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !48, !taffo.initweight !106
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !48, !taffo.initweight !109
  store float %mul, float* %arrayidx6, align 4, !taffo.info !67, !taffo.initweight !124
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !185

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !186

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !178 !taffo.funinfo !187 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !92
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !78
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !92
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !94
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !51, !taffo.initweight !106
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !51, !taffo.initweight !109
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !188, !taffo.initweight !124
  %conv = sitofp i32 %factor to float, !taffo.info !190
  %mul = fmul float %1, %conv, !taffo.info !191, !taffo.initweight !184
  %2 = mul nsw i32 %i.0, %m, !taffo.info !94
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !51, !taffo.initweight !106
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !51, !taffo.initweight !109
  store float %mul, float* %arrayidx6, align 4, !taffo.info !71, !taffo.initweight !124
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !193

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !92, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !194

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x407F747ABFB9BED3}
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
!32 = !{void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.6}
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
!49 = !{!"fixp", i32 32, i32 23}
!50 = !{!"C"}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 28}
!53 = !{double 0.000000e+00, double 7.500000e+00}
!54 = !{!52, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 7.200000e+00}
!56 = !{!43, i1 false, i1 false, i2 -1}
!57 = !{i32 1}
!58 = !{!49, i1 false, i1 false, i2 -1}
!59 = !{!52, i1 false, i1 false, i2 -1}
!60 = !{i1 false, !44, i1 false, i2 -1}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = distinct !{null}
!63 = !{i1 false, i1 false, i1 false}
!64 = !{void (float*, i32)* @scale_scalar}
!65 = !{i1 false, !47, i1 false, i2 -1}
!66 = !{i32 2}
!67 = !{i1 false, !1, i1 false, i2 -1}
!68 = !{i32 3}
!69 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!70 = !{void (i32, i32, float*, i32)* @scale_2d}
!71 = !{i1 false, !53, i1 false, i2 -1}
!72 = !{i1 false, !55, i1 false, i2 -1}
!73 = !{i1 false}
!74 = !{!52, !44, i1 false, i2 -1}
!75 = distinct !{null}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 1.700000e+01}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 1.000000e+00}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 0.000000e+00, double 2.890000e+02}
!82 = !{i32 4}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 1.000000e+00, double 2.890000e+02}
!85 = distinct !{!85, !23}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 1.000000e+00, double 1.700000e+01}
!88 = distinct !{!88, !23}
!89 = !{i32 1, !90, i32 1, !0}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 1.600000e+01, double 1.600000e+01}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 1.000000e+00, double 1.000000e+00}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 0.000000e+00, double 0.000000e+00}
!96 = !{i1 false, i1 false, i1 false, i1 false}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = !{i32 1, i32 -1}
!100 = !{i32 1, !42, i32 1, !101}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 8.000000e+00, double 8.000000e+00}
!103 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!104 = !{i32 1, !90, i32 1, !16, i32 1, !74, i32 1, !46, i32 1, !48, i32 1, !51, i32 1, !54}
!105 = !{i32 5}
!106 = !{i32 6}
!107 = !{!108, !1, i1 false, i2 -1}
!108 = !{!"fixp", i32 32, i32 22}
!109 = !{i32 7}
!110 = !{!108, !111, i1 false, i2 -1}
!111 = !{double 0.000000e+00, double 0x4082DF7CD96F727E}
!112 = distinct !{!112, !23}
!113 = !{!52, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 1.125000e+01}
!115 = !{!116, !117, i1 false, i2 -1}
!116 = !{!"fixp", i32 32, i32 24}
!117 = !{double 0.000000e+00, double 8.100000e+01}
!118 = !{!52, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 1.080000e+01}
!120 = !{!108, !121, i1 false, i2 -1}
!121 = !{double 0.000000e+00, double 1.620000e+02}
!122 = !{!108, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 0x4084CA3D5FDCDF6A}
!124 = !{i32 8}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
!128 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!129 = !{i32 1, !90, i32 1, !16, i32 1, !42, i32 1, !46, i32 1, !48, i32 1, !51, i32 1, !54}
!130 = !{!131, i1 false}
!131 = !{i1 false, !44, i1 false, i2 0}
!132 = !{!133, i1 false}
!133 = !{i1 false, !134, i1 false, i2 0}
!134 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!135 = !{i1 false, !77, i1 false, i2 1}
!136 = !{i1 false, !79, i1 false, i2 1}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double 0.000000e+00, double 1.600000e+01}
!139 = !{i1 false, !140, i1 false, i2 1}
!140 = !{double 0.000000e+00, double 1.100000e+01}
!141 = !{i1 false, !3, i1 false, i2 1}
!142 = !{i1 false, !143, i1 false, i2 1}
!143 = !{double 0.000000e+00, double 1.600000e+02}
!144 = !{i1 false, !145, i1 false, i2 1}
!145 = !{double 1.000000e+00, double 1.610000e+02}
!146 = !{i1 false, !147, i1 false, i2 1}
!147 = !{double 0.000000e+00, double 1.500000e+01}
!148 = !{!52, !147, i1 false, i2 1}
!149 = !{!150, !91, i1 false, i2 1}
!150 = !{!"fixp", i32 32, i32 27}
!151 = !{!152, !153, i1 false, i2 1}
!152 = !{!"fixp", i32 32, i32 31}
!153 = !{double 0.000000e+00, double 9.375000e-01}
!154 = !{!52, !53, i1 false, i2 1}
!155 = !{i1 false, i1 false, i1 false, i2 1}
!156 = !{i1 false, !157, i1 false, i2 1}
!157 = !{double 2.000000e+00, double 1.620000e+02}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 0.000000e+00, double 9.000000e+00}
!160 = !{!52, !159, i1 false, i2 1}
!161 = !{!52, !17, i1 false, i2 1}
!162 = !{!152, !163, i1 false, i2 1}
!163 = !{double 0.000000e+00, double 9.000000e-01}
!164 = !{!52, !55, i1 false, i2 1}
!165 = !{i1 false, !166, i1 false, i2 1}
!166 = !{double 1.000000e+00, double 1.100000e+01}
!167 = distinct !{!167, !23}
!168 = !{i1 false, !87, i1 false, i2 1}
!169 = distinct !{!169, !23}
!170 = !{i1 false, !93, i1 false, i2 1}
!171 = !{i1 false, !172, i1 false, i2 1}
!172 = !{double 3.000000e+00, double 1.630000e+02}
!173 = !{!52, !174, i1 false, i2 1}
!174 = !{double 0.000000e+00, double 1.500000e+00}
!175 = !{!49, !1, i1 false, i2 1}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23}
!178 = !{i32 -1, i32 -1, i32 3, i32 -1}
!179 = !{i32 1, !90, i32 1, !90, i32 1, !48, i32 1, !101}
!180 = !{!52, !102, i1 false, i2 1}
!181 = !{!182, !183, i1 false, i2 -1}
!182 = !{!"fixp", i32 32, i32 20}
!183 = !{double 0.000000e+00, double 0x40AF747ABFB9BED3}
!184 = !{i32 9}
!185 = distinct !{!185, !23}
!186 = distinct !{!186, !23}
!187 = !{i32 1, !90, i32 1, !16, i32 1, !51, i32 1, !101}
!188 = !{!189, !53, i1 false, i2 -1}
!189 = !{!"fixp", i32 32, i32 26}
!190 = !{!189, !102, i1 false, i2 1}
!191 = !{!189, !192, i1 false, i2 -1}
!192 = !{double 0.000000e+00, double 6.000000e+01}
!193 = distinct !{!193, !23}
!194 = distinct !{!194, !23}