; ModuleID = './build/bin/fixed/syrk/16/syrk-standard-4-fixed-16.out.ll.3.taffotmp.ll'
source_filename = "./sources/syrk.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@C_float = dso_local global [16 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !54, !taffo.initweight !55
  %beta2 = bitcast float* %beta to i8*, !taffo.info !54, !taffo.initweight !55
  %C3 = bitcast [16 x [16 x float]]* %C to i8*, !taffo.info !56, !taffo.initweight !55, !taffo.target !50
  %A4 = bitcast [16 x [10 x float]]* %A to i8*, !taffo.info !57, !taffo.initweight !55
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !55, !taffo.target !50
  %arraydecay5 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !55
  call void @init_array.4(i32 noundef 16, i32 noundef 10, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay5), !taffo.info !58, !taffo.initweight !55, !taffo.constinfo !59, !taffo.originalCall !60
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 4), !taffo.info !58, !taffo.initweight !55, !taffo.constinfo !61, !taffo.originalCall !62
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 4), !taffo.info !63, !taffo.initweight !55, !taffo.constinfo !61, !taffo.originalCall !62
  %arraydecay6 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !55, !taffo.target !50
  %0 = bitcast [16 x float]* %arraydecay6 to float*, !taffo.info !48, !taffo.initweight !64, !taffo.target !50
  call void @scale_2d.5(i32 noundef 16, i32 noundef 16, float* noundef %0, i32 noundef 4), !taffo.info !65, !taffo.initweight !66, !taffo.constinfo !67, !taffo.target !50, !taffo.originalCall !68
  %arraydecay7 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !55
  %1 = bitcast [10 x float]* %arraydecay7 to float*, !taffo.info !51, !taffo.initweight !64
  call void @scale_2d.6(i32 noundef 16, i32 noundef 10, float* noundef %1, i32 noundef 4), !taffo.info !69, !taffo.initweight !66, !taffo.constinfo !67, !taffo.originalCall !68
  call void @timer_start(), !taffo.constinfo !70
  %2 = load float, float* %alpha, align 4, !taffo.info !71, !taffo.initweight !55
  %3 = load float, float* %beta, align 4, !taffo.info !46, !taffo.initweight !55
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 0, !taffo.info !48, !taffo.initweight !55, !taffo.target !50
  %arraydecay9 = getelementptr inbounds [16 x [10 x float]], [16 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !55
  call void @kernel_syrk.3(i32 noundef 16, i32 noundef 10, float noundef %2, float noundef %3, [16 x float]* noundef %arraydecay8, [10 x float]* noundef %arraydecay9), !taffo.info !58, !taffo.initweight !64, !taffo.constinfo !59, !taffo.originalCall !72
  call void @timer_stop(), !taffo.constinfo !70
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !73
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !75
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp11 = icmp sle i32 %j.0, %i.0, !taffo.info !75
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %arrayidx = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %C, i32 0, i32 %i.0, !taffo.info !48, !taffo.initweight !55, !taffo.target !50
  %arrayidx13 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !64, !taffo.target !50
  %4 = load float, float* %arrayidx13, align 4, !taffo.info !48, !taffo.initweight !66, !taffo.target !50
  %arrayidx14 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !0
  store float %4, float* %arrayidx15, align 4, !taffo.info !65, !taffo.initweight !77, !taffo.target !50
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %inc = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond10, !llvm.loop !80

for.end:                                          ; preds = %for.cond10
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !81

for.end18:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]]* @C_float, i32 0, i32 0)), !taffo.constinfo !61
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [16 x float]* noundef %C) #0 !taffo.initweight !24 !taffo.funinfo !82 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !85
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !87
  %add = add nsw i32 %mul, %j.0, !taffo.info !87
  %rem = srem i32 %add, 20, !taffo.info !87, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !85
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !61
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !89
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !90

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !91

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !92 !taffo.funinfo !93 !taffo.sourceFunction !62 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_syrk.3(i32 noundef %n, i32 noundef %m, float noundef %alpha, float noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !96 !taffo.funinfo !97 !taffo.sourceFunction !72 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp sle i32 %j.0, %i.0, !taffo.info !75
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !48, !taffo.initweight !98
  %arrayidx4 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !99
  %0 = load float, float* %arrayidx4, align 4, !taffo.info !100, !taffo.initweight !102
  %mul = fmul float %0, %beta, !taffo.info !103, !taffo.initweight !98
  store float %mul, float* %arrayidx4, align 4, !taffo.info !63, !taffo.initweight !99
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !105

for.end:                                          ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc22, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ], !taffo.info !75
  %cmp6 = icmp slt i32 %k.0, %m, !taffo.info !85
  br i1 %cmp6, label %for.body7, label %for.end24

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %j.1 = phi i32 [ 0, %for.body7 ], [ %inc20, %for.inc19 ], !taffo.info !75
  %cmp9 = icmp sle i32 %j.1, %i.0, !taffo.info !75
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !51, !taffo.initweight !98
  %arrayidx12 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx11, i32 0, i32 %k.0, !taffo.info !51, !taffo.initweight !99
  %1 = load float, float* %arrayidx12, align 4, !taffo.info !51, !taffo.initweight !102
  %mul13 = fmul float %alpha, %1, !taffo.info !106, !taffo.initweight !98
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %j.1, !taffo.info !51, !taffo.initweight !98
  %arrayidx15 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx14, i32 0, i32 %k.0, !taffo.info !51, !taffo.initweight !99
  %2 = load float, float* %arrayidx15, align 4, !taffo.info !109, !taffo.initweight !102
  %mul16 = fmul float %mul13, %2, !taffo.info !110, !taffo.initweight !99
  %arrayidx17 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.0, !taffo.info !48, !taffo.initweight !98
  %arrayidx18 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx17, i32 0, i32 %j.1, !taffo.info !48, !taffo.initweight !99
  %3 = load float, float* %arrayidx18, align 4, !taffo.info !100, !taffo.initweight !102
  %add = fadd float %3, %mul16, !taffo.info !112, !taffo.initweight !102
  store float %add, float* %arrayidx18, align 4, !taffo.info !65, !taffo.initweight !102
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %inc20 = add nsw i32 %j.1, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !114

for.end21:                                        ; preds = %for.cond8
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %inc23 = add nsw i32 %k.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !115

for.end24:                                        ; preds = %for.cond5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !116

for.end27:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %n, i32 noundef %m, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %C, [10 x float]* noundef %A) #0 !taffo.initweight !117 !taffo.funinfo !118 !taffo.sourceFunction !60 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !58, !taffo.initweight !77, !taffo.constinfo !119
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !63, !taffo.initweight !77, !taffo.constinfo !121
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !124, !taffo.initweight !45
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !125, !taffo.initweight !64
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !126, !taffo.initweight !66

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !128, !taffo.initweight !45
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !125, !taffo.initweight !64
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !130, !taffo.initweight !66

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !131, !taffo.initweight !64
  %add = add nsw i32 %mul, 1, !taffo.info !133, !taffo.initweight !66, !taffo.constinfo !21
  %rem = srem i32 %add, %n, !taffo.info !135, !taffo.initweight !77
  %conv = sitofp i32 %rem to float, !taffo.info !137, !taffo.initweight !98
  %conv6 = sitofp i32 %n to float, !taffo.info !139
  %div = fdiv float %conv, %conv6, !taffo.info !140, !taffo.initweight !99
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !143, !taffo.initweight !64
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !143, !taffo.initweight !64
  store float %div, float* %arrayidx7, align 4, !taffo.info !144, !taffo.initweight !66
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !145, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !147

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !148, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !149

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !124, !taffo.initweight !45
  %cmp12 = icmp slt i32 %i.1, %n, !taffo.info !125, !taffo.initweight !64
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !126, !taffo.initweight !66

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !128, !taffo.initweight !45
  %cmp16 = icmp slt i32 %j.1, %n, !taffo.info !150, !taffo.initweight !64
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !130, !taffo.initweight !66

for.body18:                                       ; preds = %for.cond15
  %mul19 = mul nsw i32 %i.1, %j.1, !taffo.info !131, !taffo.initweight !64
  %add20 = add nsw i32 %mul19, 2, !taffo.info !151, !taffo.initweight !66, !taffo.constinfo !21
  %rem21 = srem i32 %add20, %m, !taffo.info !153, !taffo.initweight !77
  %conv22 = sitofp i32 %rem21 to float, !taffo.info !155, !taffo.initweight !98
  %conv23 = sitofp i32 %m to float, !taffo.info !156
  %div24 = fdiv float %conv22, %conv23, !taffo.info !157, !taffo.initweight !99
  %arrayidx25 = getelementptr inbounds [16 x float], [16 x float]* %C, i32 %i.1, !taffo.info !159, !taffo.initweight !64
  %arrayidx26 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.info !159, !taffo.initweight !64
  store float %div24, float* %arrayidx26, align 4, !taffo.info !144, !taffo.initweight !66
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !145, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !160

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !148, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !161

for.end32:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !162 !taffo.funinfo !163 !taffo.sourceFunction !68 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !85
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !87
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !48, !taffo.initweight !99
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !48, !taffo.initweight !102
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !164, !taffo.initweight !166
  %conv = sitofp i32 %factor to float, !taffo.info !167
  %mul = fmul float %1, %conv, !taffo.info !168, !taffo.initweight !170
  %2 = mul nsw i32 %i.0, %m, !taffo.info !87
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !48, !taffo.initweight !99
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !48, !taffo.initweight !102
  store float %mul, float* %arrayidx6, align 4, !taffo.info !65, !taffo.initweight !166
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !171

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !172

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !162 !taffo.funinfo !173 !taffo.sourceFunction !68 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !75
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !75
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !85
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !87
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !51, !taffo.initweight !99
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !51, !taffo.initweight !102
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !174, !taffo.initweight !166
  %conv = sitofp i32 %factor to float, !taffo.info !175
  %mul = fmul float %1, %conv, !taffo.info !176, !taffo.initweight !170
  %2 = mul nsw i32 %i.0, %m, !taffo.info !87
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !51, !taffo.initweight !99
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !51, !taffo.initweight !102
  store float %mul, float* %arrayidx6, align 4, !taffo.info !69, !taffo.initweight !166
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !177

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !178

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x405AA50A41A261BF}
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
!32 = !{void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6}
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
!49 = !{!"fixp", i32 32, i32 25}
!50 = !{!"C"}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 29}
!53 = !{double 0.000000e+00, double 3.750000e+00}
!54 = !{!43, i1 false, i1 false, i2 -1}
!55 = !{i32 1}
!56 = !{!49, i1 false, i1 false, i2 -1}
!57 = !{!52, i1 false, i1 false, i2 -1}
!58 = !{i1 false, !44, i1 false, i2 -1}
!59 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!60 = distinct !{null}
!61 = !{i1 false, i1 false, i1 false}
!62 = !{void (float*, i32)* @scale_scalar}
!63 = !{i1 false, !47, i1 false, i2 -1}
!64 = !{i32 2}
!65 = !{i1 false, !1, i1 false, i2 -1}
!66 = !{i32 3}
!67 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!68 = !{void (i32, i32, float*, i32)* @scale_2d}
!69 = !{i1 false, !53, i1 false, i2 -1}
!70 = !{i1 false}
!71 = !{!52, !44, i1 false, i2 -1}
!72 = distinct !{null}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 1.700000e+01}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 1.000000e+00}
!77 = !{i32 4}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 1.700000e+01}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, !23}
!82 = !{i32 1, !83, i32 1, !0}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 1.600000e+01, double 1.600000e+01}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 1.000000e+00, double 1.000000e+00}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 0.000000e+00, double 0.000000e+00}
!89 = !{i1 false, i1 false, i1 false, i1 false}
!90 = distinct !{!90, !23}
!91 = distinct !{!91, !23}
!92 = !{i32 1, i32 -1}
!93 = !{i32 1, !42, i32 1, !94}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 4.000000e+00, double 4.000000e+00}
!96 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!97 = !{i32 1, !83, i32 1, !16, i32 1, !71, i32 1, !46, i32 1, !48, i32 1, !51}
!98 = !{i32 5}
!99 = !{i32 6}
!100 = !{!101, !1, i1 false, i2 -1}
!101 = !{!"fixp", i32 32, i32 24}
!102 = !{i32 7}
!103 = !{!101, !104, i1 false, i2 -1}
!104 = !{double 0.000000e+00, double 0x405FF93F81F60EE5}
!105 = distinct !{!105, !23}
!106 = !{!107, !108, i1 false, i2 -1}
!107 = !{!"fixp", i32 32, i32 27}
!108 = !{double 0.000000e+00, double 5.625000e+00}
!109 = !{!107, !53, i1 false, i2 -1}
!110 = !{!107, !111, i1 false, i2 -1}
!111 = !{double 0.000000e+00, double 0x4035180000000000}
!112 = !{!101, !113, i1 false, i2 -1}
!113 = !{double 0.000000e+00, double 0x405FEB0A41A261BF}
!114 = distinct !{!114, !23}
!115 = distinct !{!115, !23}
!116 = distinct !{!116, !23}
!117 = !{i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2}
!118 = !{i32 1, !83, i32 1, !16, i32 1, !42, i32 1, !46, i32 1, !48, i32 1, !51}
!119 = !{!120, i1 false}
!120 = !{i1 false, !44, i1 false, i2 0}
!121 = !{!122, i1 false}
!122 = !{i1 false, !123, i1 false, i2 0}
!123 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!124 = !{i1 false, !74, i1 false, i2 1}
!125 = !{i1 false, !76, i1 false, i2 1}
!126 = !{i1 false, !127, i1 false, i2 1}
!127 = !{double 0.000000e+00, double 1.600000e+01}
!128 = !{i1 false, !129, i1 false, i2 1}
!129 = !{double 0.000000e+00, double 1.100000e+01}
!130 = !{i1 false, !3, i1 false, i2 1}
!131 = !{i1 false, !132, i1 false, i2 1}
!132 = !{double 0.000000e+00, double 1.600000e+02}
!133 = !{i1 false, !134, i1 false, i2 1}
!134 = !{double 1.000000e+00, double 1.610000e+02}
!135 = !{i1 false, !136, i1 false, i2 1}
!136 = !{double 0.000000e+00, double 1.500000e+01}
!137 = !{!138, !136, i1 false, i2 1}
!138 = !{!"fixp", i32 32, i32 28}
!139 = !{!107, !84, i1 false, i2 1}
!140 = !{!141, !142, i1 false, i2 1}
!141 = !{!"fixp", i32 32, i32 31}
!142 = !{double 0.000000e+00, double 9.375000e-01}
!143 = !{!52, !53, i1 false, i2 1}
!144 = !{i1 false, i1 false, i1 false, i2 1}
!145 = !{i1 false, !146, i1 false, i2 1}
!146 = !{double 1.000000e+00, double 1.100000e+01}
!147 = distinct !{!147, !23}
!148 = !{i1 false, !79, i1 false, i2 1}
!149 = distinct !{!149, !23}
!150 = !{i1 false, !86, i1 false, i2 1}
!151 = !{i1 false, !152, i1 false, i2 1}
!152 = !{double 2.000000e+00, double 1.620000e+02}
!153 = !{i1 false, !154, i1 false, i2 1}
!154 = !{double 0.000000e+00, double 9.000000e+00}
!155 = !{!138, !154, i1 false, i2 1}
!156 = !{!138, !17, i1 false, i2 1}
!157 = !{!141, !158, i1 false, i2 1}
!158 = !{double 0.000000e+00, double 9.000000e-01}
!159 = !{!49, !1, i1 false, i2 1}
!160 = distinct !{!160, !23}
!161 = distinct !{!161, !23}
!162 = !{i32 -1, i32 -1, i32 3, i32 -1}
!163 = !{i32 1, !83, i32 1, !83, i32 1, !48, i32 1, !94}
!164 = !{!165, !1, i1 false, i2 -1}
!165 = !{!"fixp", i32 32, i32 23}
!166 = !{i32 8}
!167 = !{!52, !95, i1 false, i2 1}
!168 = !{!165, !169, i1 false, i2 -1}
!169 = !{double 0.000000e+00, double 0x407AA50A41A261BF}
!170 = !{i32 9}
!171 = distinct !{!171, !23}
!172 = distinct !{!172, !23}
!173 = !{i32 1, !83, i32 1, !16, i32 1, !51, i32 1, !94}
!174 = !{!138, !53, i1 false, i2 -1}
!175 = !{!138, !95, i1 false, i2 1}
!176 = !{!138, !136, i1 false, i2 -1}
!177 = distinct !{!177, !23}
!178 = distinct !{!178, !23}
