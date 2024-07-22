; ModuleID = './build/bin/fixed/syr2k/11/syr2k-standard-128-fixed-11.out.ll.3.taffotmp.ll'
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
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 128), !taffo.info !60, !taffo.initweight !57, !taffo.constinfo !63, !taffo.originalCall !64
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 128), !taffo.info !65, !taffo.initweight !57, !taffo.constinfo !63, !taffo.originalCall !64
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %0 = bitcast [16 x float]* %arraydecay8 to float*, !taffo.info !48, !taffo.initweight !66, !taffo.target !50
  call void @scale_2d.5(i32 noundef 16, i32 noundef 16, float* noundef %0, i32 noundef 128), !taffo.info !67, !taffo.initweight !68, !taffo.constinfo !69, !taffo.target !50, !taffo.originalCall !70
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57
  %1 = bitcast [10 x float]* %arraydecay9 to float*, !taffo.info !51, !taffo.initweight !66
  call void @scale_2d.6(i32 noundef 16, i32 noundef 10, float* noundef %1, i32 noundef 128), !taffo.info !71, !taffo.initweight !68, !taffo.constinfo !69, !taffo.originalCall !70
  %arraydecay10 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  %2 = bitcast [10 x float]* %arraydecay10 to float*, !taffo.info !54, !taffo.initweight !66
  call void @scale_2d.6(i32 noundef 16, i32 noundef 10, float* noundef %2, i32 noundef 128), !taffo.info !72, !taffo.initweight !68, !taffo.constinfo !69, !taffo.originalCall !70
  call void @timer_start(), !taffo.constinfo !73
  %3 = load float, float* %alpha, align 4, !taffo.info !42, !taffo.initweight !57
  %4 = load float, float* %beta, align 4, !taffo.info !46, !taffo.initweight !57
  %arraydecay11 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %arraydecay12 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57
  %arraydecay13 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  call void @kernel_syr2k.3(i32 noundef 16, i32 noundef 10, float noundef %3, float noundef %4, [16 x float]* noundef %arraydecay11, [10 x float]* noundef %arraydecay12, [10 x float]* noundef %arraydecay13), !taffo.info !60, !taffo.initweight !66, !taffo.constinfo !61, !taffo.originalCall !74
  call void @timer_stop(), !taffo.constinfo !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !77
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !79
  %cmp15 = icmp slt i32 %j.0, 16, !taffo.info !77
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.info !48, !taffo.initweight !57, !taffo.target !50
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !66, !taffo.target !50
  %5 = load float, float* %arrayidx17, align 4, !taffo.info !48, !taffo.initweight !68, !taffo.target !50
  %arrayidx18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx18, i32 0, i32 %j.0, !taffo.info !0
  store float %5, float* %arrayidx19, align 4, !taffo.info !67, !taffo.initweight !81, !taffo.target !50
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %inc = add nsw i32 %j.0, 1, !taffo.info !82, !taffo.constinfo !21
  br label %for.cond14, !llvm.loop !84

for.end:                                          ; preds = %for.cond14
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !87

for.end22:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !63
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !24 !taffo.funinfo !88 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !77
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !77
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !91
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !93
  %add = add nsw i32 %mul, %j.0, !taffo.info !93
  %rem = srem i32 %add, 20, !taffo.info !93, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !91
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
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), double noundef %conv), !taffo.constinfo !95
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !96

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !97

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !98 !taffo.funinfo !99 !taffo.sourceFunction !64 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syr2k.3(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !102 !taffo.funinfo !103 !taffo.sourceFunction !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ], !taffo.info !77
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !77
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !77
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !48, !taffo.initweight !104
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !105
  %0 = load float, float* %arrayidx4, align 4, !taffo.info !106, !taffo.initweight !108
  %mul = fmul float %0, %beta, !taffo.info !109, !taffo.initweight !104
  store float %mul, float* %arrayidx4, align 4, !taffo.info !65, !taffo.initweight !105
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !111

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !77
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !91
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc27, %for.inc26 ], !taffo.info !77
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !77
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1, !taffo.info !51, !taffo.initweight !104
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !51, !taffo.initweight !105
  %1 = load float, float* %arrayidx12, align 4, !taffo.info !112, !taffo.initweight !108
  %mul13 = fmul float %1, %alpha, !taffo.info !114, !taffo.initweight !104
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0, !taffo.info !54, !taffo.initweight !104
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0, !taffo.info !54, !taffo.initweight !105
  %2 = load float, float* %arrayidx15, align 4, !taffo.info !54, !taffo.initweight !108
  %mul16 = fmul float %mul13, %2, !taffo.info !116, !taffo.initweight !105
  %arrayidx17 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %j.1, !taffo.info !54, !taffo.initweight !104
  %arrayidx18 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx17, i32 0, i32 %k.0, !taffo.info !54, !taffo.initweight !105
  %3 = load float, float* %arrayidx18, align 4, !taffo.info !119, !taffo.initweight !108
  %mul19 = fmul float %3, %alpha, !taffo.info !120, !taffo.initweight !104
  %arrayidx20 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !51, !taffo.initweight !104
  %arrayidx21 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx20, i32 0, i32 %k.0, !taffo.info !51, !taffo.initweight !105
  %4 = load float, float* %arrayidx21, align 4, !taffo.info !51, !taffo.initweight !108
  %mul22 = fmul float %mul19, %4, !taffo.info !116, !taffo.initweight !105
  %add = fadd float %mul16, %mul22, !taffo.info !122, !taffo.initweight !108
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !48, !taffo.initweight !104
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx23, i32 0, i32 %j.1, !taffo.info !48, !taffo.initweight !105
  %5 = load float, float* %arrayidx24, align 4, !taffo.info !106, !taffo.initweight !108
  %add25 = fadd float %5, %add, !taffo.info !124, !taffo.initweight !126
  store float %add25, float* %arrayidx24, align 4, !taffo.info !67, !taffo.initweight !108
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !127

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %k.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !128

for.end31:                                        ; preds = %for.cond5
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !129

for.end34:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A, [10 x float]* noundef %B) #0 !taffo.initweight !130 !taffo.funinfo !103 !taffo.sourceFunction !62 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !60, !taffo.initweight !81, !taffo.constinfo !131
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !65, !taffo.initweight !81, !taffo.constinfo !133
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !136, !taffo.initweight !45
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !137, !taffo.initweight !66
  br i1 %cmp, label %for.body, label %for.end18, !taffo.info !138, !taffo.initweight !68

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !140, !taffo.initweight !45
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !137, !taffo.initweight !66
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !142, !taffo.initweight !68

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !143, !taffo.initweight !66
  %add = add nsw i32 %mul, 1, !taffo.info !145, !taffo.initweight !68, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !147, !taffo.initweight !81
  %conv = sitofp i32 %rem to float, !taffo.info !149, !taffo.initweight !104
  %conv6 = sitofp i32 %n to float, !taffo.info !151
  %div = fdiv float %conv, %conv6, !taffo.info !153, !taffo.initweight !105
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !156, !taffo.initweight !66
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !156, !taffo.initweight !66
  store float %div, float* %arrayidx7, align 4, !taffo.info !157, !taffo.initweight !68
  %mul8 = mul nsw i32 %i.0, %j.0, !taffo.info !143, !taffo.initweight !66
  %add9 = add nsw i32 %mul8, 2, !taffo.info !158, !taffo.initweight !68, !taffo.constinfo !21
  %rem10 = srem i32 %add9, %m, !taffo.info !160, !taffo.initweight !81
  %conv11 = sitofp i32 %rem10 to float, !taffo.info !162, !taffo.initweight !104
  %conv12 = sitofp i32 %m to float, !taffo.info !163
  %div13 = fdiv float %conv11, %conv12, !taffo.info !164, !taffo.initweight !105
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.0, !taffo.info !166, !taffo.initweight !66
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !166, !taffo.initweight !66
  store float %div13, float* %arrayidx15, align 4, !taffo.info !157, !taffo.initweight !68
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !167, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !169

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !170, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !171

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc39, %for.inc38 ], !taffo.info !136, !taffo.initweight !45
  %cmp20 = icmp slt i32 %i.1, %n, !taffo.info !137, !taffo.initweight !66
  br i1 %cmp20, label %for.body22, label %for.end40, !taffo.info !138, !taffo.initweight !68

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc35, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc36, %for.inc35 ], !taffo.info !140, !taffo.initweight !45
  %cmp24 = icmp slt i32 %j.1, %n, !taffo.info !172, !taffo.initweight !66
  br i1 %cmp24, label %for.body26, label %for.end37, !taffo.info !142, !taffo.initweight !68

for.body26:                                       ; preds = %for.cond23
  %mul27 = mul nsw i32 %i.1, %j.1, !taffo.info !143, !taffo.initweight !66
  %add28 = add nsw i32 %mul27, 3, !taffo.info !173, !taffo.initweight !68, !taffo.constinfo !21
  %rem29 = srem i32 %add28, %n, !taffo.info !147, !taffo.initweight !81
  %conv30 = sitofp i32 %rem29 to float, !taffo.info !149, !taffo.initweight !104
  %conv31 = sitofp i32 %m to float, !taffo.info !163
  %div32 = fdiv float %conv30, %conv31, !taffo.info !175, !taffo.initweight !105
  %arrayidx33 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.info !177, !taffo.initweight !66
  %arrayidx34 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.info !177, !taffo.initweight !66
  store float %div32, float* %arrayidx34, align 4, !taffo.info !157, !taffo.initweight !68
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26
  %inc36 = add nsw i32 %j.1, 1, !taffo.info !167, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !178

for.end37:                                        ; preds = %for.cond23
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %inc39 = add nsw i32 %i.1, 1, !taffo.info !170, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond19, !llvm.loop !179

for.end40:                                        ; preds = %for.cond19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !180 !taffo.funinfo !181 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !77
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !77
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !91
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !48, !taffo.initweight !105
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !48, !taffo.initweight !108
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !48, !taffo.initweight !126
  %conv = sitofp i32 %factor to float, !taffo.info !182
  %mul = fmul float %1, %conv, !taffo.info !183, !taffo.initweight !186
  %2 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !48, !taffo.initweight !105
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !48, !taffo.initweight !108
  store float %mul, float* %arrayidx6, align 4, !taffo.info !67, !taffo.initweight !126
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !187

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !188

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !180 !taffo.funinfo !189 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !77
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !91
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !77
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !91
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !51, !taffo.initweight !105
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !51, !taffo.initweight !108
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !51, !taffo.initweight !126
  %conv = sitofp i32 %factor to float, !taffo.info !182
  %mul = fmul float %1, %conv, !taffo.info !190, !taffo.initweight !186
  %2 = mul nsw i32 %i.0, %m, !taffo.info !93
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !51, !taffo.initweight !105
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !51, !taffo.initweight !108
  store float %mul, float* %arrayidx6, align 4, !taffo.info !71, !taffo.initweight !126
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !193

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !194

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x40FF01479FFF79C8}
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
!49 = !{!"fixp", i32 32, i32 15}
!50 = !{!"C"}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 25}
!53 = !{double 0.000000e+00, double 1.200000e+02}
!54 = !{!52, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 0x405CCCCCC0379314}
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
!74 = distinct !{null}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 1.700000e+01}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 0.000000e+00, double 1.000000e+00}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 0.000000e+00, double 2.890000e+02}
!81 = !{i32 4}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 1.000000e+00, double 2.890000e+02}
!84 = distinct !{!84, !23}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 1.000000e+00, double 1.700000e+01}
!87 = distinct !{!87, !23}
!88 = !{i32 1, !89, i32 1, !0}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.600000e+01, double 1.600000e+01}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 1.000000e+00, double 1.000000e+00}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 0.000000e+00, double 0.000000e+00}
!95 = !{i1 false, i1 false, i1 false, i1 false}
!96 = distinct !{!96, !23}
!97 = distinct !{!97, !23}
!98 = !{i32 1, i32 -1}
!99 = !{i32 1, !42, i32 1, !100}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 1.280000e+02, double 1.280000e+02}
!102 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!103 = !{i32 1, !89, i32 1, !16, i32 1, !42, i32 1, !46, i32 1, !48, i32 1, !51, i32 1, !54}
!104 = !{i32 5}
!105 = !{i32 6}
!106 = !{!107, !1, i1 false, i2 -1}
!107 = !{!"fixp", i32 32, i32 14}
!108 = !{i32 7}
!109 = !{!107, !110, i1 false, i2 -1}
!110 = !{double 0.000000e+00, double 0x41029A5E2CCC7C45}
!111 = distinct !{!111, !23}
!112 = !{!113, !53, i1 false, i2 -1}
!113 = !{!"fixp", i32 32, i32 24}
!114 = !{!113, !115, i1 false, i2 -1}
!115 = !{double 0.000000e+00, double 1.800000e+02}
!116 = !{!117, !118, i1 false, i2 -1}
!117 = !{!"fixp", i32 32, i32 16}
!118 = !{double 0.000000e+00, double 0x40D43FFFF727136A}
!119 = !{!113, !55, i1 false, i2 -1}
!120 = !{!113, !121, i1 false, i2 -1}
!121 = !{double 0.000000e+00, double 0x406599999029AE4F}
!122 = !{!107, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 0x40E43FFFF727136A}
!124 = !{!107, !125, i1 false, i2 -1}
!125 = !{double 0.000000e+00, double 0x410490A3CDC981BE}
!126 = !{i32 8}
!127 = distinct !{!127, !23}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !23}
!130 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2}
!131 = !{!132, i1 false}
!132 = !{i1 false, !44, i1 false, i2 0}
!133 = !{!134, i1 false}
!134 = !{i1 false, !135, i1 false, i2 0}
!135 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!136 = !{i1 false, !76, i1 false, i2 1}
!137 = !{i1 false, !78, i1 false, i2 1}
!138 = !{i1 false, !139, i1 false, i2 1}
!139 = !{double 0.000000e+00, double 1.600000e+01}
!140 = !{i1 false, !141, i1 false, i2 1}
!141 = !{double 0.000000e+00, double 1.100000e+01}
!142 = !{i1 false, !3, i1 false, i2 1}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 0.000000e+00, double 1.600000e+02}
!145 = !{i1 false, !146, i1 false, i2 1}
!146 = !{double 1.000000e+00, double 1.610000e+02}
!147 = !{i1 false, !148, i1 false, i2 1}
!148 = !{double 0.000000e+00, double 1.500000e+01}
!149 = !{!150, !148, i1 false, i2 1}
!150 = !{!"fixp", i32 32, i32 28}
!151 = !{!152, !90, i1 false, i2 1}
!152 = !{!"fixp", i32 32, i32 27}
!153 = !{!154, !155, i1 false, i2 1}
!154 = !{!"fixp", i32 32, i32 31}
!155 = !{double 0.000000e+00, double 9.375000e-01}
!156 = !{!52, !53, i1 false, i2 1}
!157 = !{i1 false, i1 false, i1 false, i2 1}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 2.000000e+00, double 1.620000e+02}
!160 = !{i1 false, !161, i1 false, i2 1}
!161 = !{double 0.000000e+00, double 9.000000e+00}
!162 = !{!150, !161, i1 false, i2 1}
!163 = !{!150, !17, i1 false, i2 1}
!164 = !{!154, !165, i1 false, i2 1}
!165 = !{double 0.000000e+00, double 9.000000e-01}
!166 = !{!52, !55, i1 false, i2 1}
!167 = !{i1 false, !168, i1 false, i2 1}
!168 = !{double 1.000000e+00, double 1.100000e+01}
!169 = distinct !{!169, !23}
!170 = !{i1 false, !86, i1 false, i2 1}
!171 = distinct !{!171, !23}
!172 = !{i1 false, !92, i1 false, i2 1}
!173 = !{i1 false, !174, i1 false, i2 1}
!174 = !{double 3.000000e+00, double 1.630000e+02}
!175 = !{!150, !176, i1 false, i2 1}
!176 = !{double 0.000000e+00, double 1.500000e+00}
!177 = !{!49, !1, i1 false, i2 1}
!178 = distinct !{!178, !23}
!179 = distinct !{!179, !23}
!180 = !{i32 -1, i32 -1, i32 3, i32 -1}
!181 = !{i32 1, !89, i32 1, !89, i32 1, !48, i32 1, !100}
!182 = !{!113, !101, i1 false, i2 1}
!183 = !{!184, !185, i1 false, i2 -1}
!184 = !{!"fixp", i32 32, i32 8}
!185 = !{double 0.000000e+00, double 0x416F01479FFF79C8}
!186 = !{i32 9}
!187 = distinct !{!187, !23}
!188 = distinct !{!188, !23}
!189 = !{i32 1, !89, i32 1, !16, i32 1, !51, i32 1, !100}
!190 = !{!191, !192, i1 false, i2 -1}
!191 = !{!"fixp", i32 32, i32 18}
!192 = !{double 0.000000e+00, double 1.536000e+04}
!193 = distinct !{!193, !23}
!194 = distinct !{!194, !23}
