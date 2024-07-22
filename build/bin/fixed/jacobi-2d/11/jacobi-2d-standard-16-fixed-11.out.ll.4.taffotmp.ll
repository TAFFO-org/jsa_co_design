; ModuleID = './build/bin/fixed/jacobi-2d/11/jacobi-2d-standard-16-fixed-11.out.ll.3.taffotmp.ll'
source_filename = "./sources/jacobi-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [15 x [15 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
define dso_local void @scale_scalar(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !24 !taffo.funinfo !25 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
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
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.equivalentChild !31 {
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
  br label %for.cond1, !llvm.loop !32

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !33

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !34 !taffo.funinfo !35 {
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
  br label %for.cond4, !llvm.loop !36

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !37

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !38

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !39 !taffo.funinfo !39 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !40 {
entry:
  %A = alloca [15 x [15 x float]], align 4, !taffo.info !41, !taffo.initweight !44, !taffo.target !45
  %B = alloca [15 x [15 x float]], align 4, !taffo.info !46, !taffo.initweight !44
  %A1 = bitcast [15 x [15 x float]]* %A to i8*, !taffo.info !49, !taffo.initweight !50, !taffo.target !45
  %B2 = bitcast [15 x [15 x float]]* %B to i8*, !taffo.info !51, !taffo.initweight !50
  %arraydecay = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !50, !taffo.target !45
  %arraydecay3 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.info !46, !taffo.initweight !50
  call void @init_array.2(i32 noundef 15, [15 x float]* noundef %arraydecay, [15 x float]* noundef %arraydecay3), !taffo.info !52, !taffo.initweight !53, !taffo.constinfo !54, !taffo.target !45, !taffo.originalCall !55
  %arraydecay4 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !50, !taffo.target !45
  %0 = bitcast [15 x float]* %arraydecay4 to float*, !taffo.info !41, !taffo.initweight !53, !taffo.target !45
  call void @scale_2d.3(i32 noundef 15, i32 noundef 15, float* noundef %0, i32 noundef 16), !taffo.info !52, !taffo.initweight !56, !taffo.constinfo !57, !taffo.target !45, !taffo.originalCall !58
  %arraydecay5 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.info !46, !taffo.initweight !50
  %1 = bitcast [15 x float]* %arraydecay5 to float*, !taffo.info !46, !taffo.initweight !53
  call void @scale_2d.4(i32 noundef 15, i32 noundef 15, float* noundef %1, i32 noundef 16), !taffo.info !59, !taffo.initweight !56, !taffo.constinfo !57, !taffo.originalCall !58
  call void @timer_start(), !taffo.constinfo !60
  %arraydecay6 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !50, !taffo.target !45
  %arraydecay7 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %B, i32 0, i32 0, !taffo.info !46, !taffo.initweight !50
  call void @kernel_jacobi_2d.1(i32 noundef 10, i32 noundef 15, [15 x float]* noundef %arraydecay6, [15 x float]* noundef %arraydecay7), !taffo.info !52, !taffo.initweight !53, !taffo.constinfo !57, !taffo.target !45, !taffo.originalCall !61
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
  %arrayidx = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* %A, i32 0, i32 %i.0, !taffo.info !41, !taffo.initweight !50, !taffo.target !45
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !53, !taffo.target !45
  %2 = load float, float* %arrayidx11, align 4, !taffo.info !41, !taffo.initweight !56, !taffo.target !45
  %arrayidx12 = getelementptr inbounds [15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx13 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.info !0
  store float %2, float* %arrayidx13, align 4, !taffo.info !52, !taffo.initweight !68, !taffo.target !45
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %j.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond8, !llvm.loop !71

for.end:                                          ; preds = %for.cond8
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !74

for.end16:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 15, [15 x float]* noundef getelementptr inbounds ([15 x [15 x float]], [15 x [15 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !75
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [15 x float]* noundef %A) #0 !taffo.initweight !24 !taffo.funinfo !76 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !81
  %add = add nsw i32 %mul, %j.0, !taffo.info !81
  %rem = srem i32 %add, 20, !taffo.info !81, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !79
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !75
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !54
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !83

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !84

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_2d.1(i32 noundef %tsteps, i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !85 !taffo.funinfo !86 !taffo.sourceFunction !61 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc64, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc65, %for.inc64 ], !taffo.info !64
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc27, %for.inc26 ], !taffo.info !87
  %sub = sub nsw i32 %n, 1, !taffo.info !89, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc, %for.inc ], !taffo.info !87
  %sub5 = sub nsw i32 %n, 1, !taffo.info !89, !taffo.constinfo !21
  %cmp6 = icmp slt i32 %j.0, %sub5, !taffo.info !79
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !91
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !92
  %0 = load float, float* %arrayidx8, align 4, !taffo.info !93, !taffo.initweight !94
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !91
  %sub10 = sub nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !21
  %arrayidx11 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx9, i32 0, i32 %sub10, !taffo.info !41, !taffo.initweight !92
  %1 = load float, float* %arrayidx11, align 4, !taffo.info !93, !taffo.initweight !94
  %add = fadd float %0, %1, !taffo.info !95, !taffo.initweight !98
  %arrayidx12 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !91
  %add13 = add nsw i32 1, %j.0, !taffo.info !19, !taffo.constinfo !21
  %arrayidx14 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx12, i32 0, i32 %add13, !taffo.info !41, !taffo.initweight !92
  %2 = load float, float* %arrayidx14, align 4, !taffo.info !99, !taffo.initweight !94
  %add15 = fadd float %add, %2, !taffo.info !100, !taffo.initweight !98
  %add16 = add nsw i32 1, %i.0, !taffo.info !19, !taffo.constinfo !21
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %add16, !taffo.info !41, !taffo.initweight !91
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !92
  %3 = load float, float* %arrayidx18, align 4, !taffo.info !99, !taffo.initweight !94
  %add19 = fadd float %add15, %3, !taffo.info !102, !taffo.initweight !98
  %sub20 = sub nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !21
  %arrayidx21 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %sub20, !taffo.info !41, !taffo.initweight !91
  %arrayidx22 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx21, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !92
  %4 = load float, float* %arrayidx22, align 4, !taffo.info !41, !taffo.initweight !94
  %add23 = fadd float %add19, %4, !taffo.info !105, !taffo.initweight !98
  %mul = fmul float 0x3FC99999A0000000, %add23, !taffo.info !107, !taffo.initweight !109, !taffo.constinfo !110
  %arrayidx24 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.0, !taffo.info !46, !taffo.initweight !91
  %arrayidx25 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx24, i32 0, i32 %j.0, !taffo.info !46, !taffo.initweight !92
  store float %mul, float* %arrayidx25, align 4, !taffo.info !59, !taffo.initweight !94
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !113

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %inc27 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !114

for.end28:                                        ; preds = %for.cond1
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc61, %for.end28
  %i.1 = phi i32 [ 1, %for.end28 ], [ %inc62, %for.inc61 ], !taffo.info !87
  %sub30 = sub nsw i32 %n, 1, !taffo.info !89, !taffo.constinfo !21
  %cmp31 = icmp slt i32 %i.1, %sub30, !taffo.info !79
  br i1 %cmp31, label %for.body32, label %for.end63

for.body32:                                       ; preds = %for.cond29
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.body32
  %j.1 = phi i32 [ 1, %for.body32 ], [ %inc59, %for.inc58 ], !taffo.info !87
  %sub34 = sub nsw i32 %n, 1, !taffo.info !89, !taffo.constinfo !21
  %cmp35 = icmp slt i32 %j.1, %sub34, !taffo.info !79
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1, !taffo.info !46, !taffo.initweight !91
  %arrayidx38 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx37, i32 0, i32 %j.1, !taffo.info !46, !taffo.initweight !92
  %5 = load float, float* %arrayidx38, align 4, !taffo.info !115, !taffo.initweight !94
  %arrayidx39 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1, !taffo.info !46, !taffo.initweight !91
  %sub40 = sub nsw i32 %j.1, 1, !taffo.info !81, !taffo.constinfo !21
  %arrayidx41 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx39, i32 0, i32 %sub40, !taffo.info !46, !taffo.initweight !92
  %6 = load float, float* %arrayidx41, align 4, !taffo.info !115, !taffo.initweight !94
  %add42 = fadd float %5, %6, !taffo.info !116, !taffo.initweight !98
  %arrayidx43 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.1, !taffo.info !46, !taffo.initweight !91
  %add44 = add nsw i32 1, %j.1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx45 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx43, i32 0, i32 %add44, !taffo.info !46, !taffo.initweight !92
  %7 = load float, float* %arrayidx45, align 4, !taffo.info !115, !taffo.initweight !94
  %add46 = fadd float %add42, %7, !taffo.info !118, !taffo.initweight !98
  %add47 = add nsw i32 1, %i.1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx48 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %add47, !taffo.info !46, !taffo.initweight !91
  %arrayidx49 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx48, i32 0, i32 %j.1, !taffo.info !46, !taffo.initweight !92
  %8 = load float, float* %arrayidx49, align 4, !taffo.info !120, !taffo.initweight !94
  %add50 = fadd float %add46, %8, !taffo.info !121, !taffo.initweight !98
  %sub51 = sub nsw i32 %i.1, 1, !taffo.info !81, !taffo.constinfo !21
  %arrayidx52 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %sub51, !taffo.info !46, !taffo.initweight !91
  %arrayidx53 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx52, i32 0, i32 %j.1, !taffo.info !46, !taffo.initweight !92
  %9 = load float, float* %arrayidx53, align 4, !taffo.info !120, !taffo.initweight !94
  %add54 = fadd float %add50, %9, !taffo.info !123, !taffo.initweight !98
  %mul55 = fmul float 0x3FC99999A0000000, %add54, !taffo.info !125, !taffo.initweight !109, !taffo.constinfo !110
  %arrayidx56 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.1, !taffo.info !41, !taffo.initweight !91
  %arrayidx57 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx56, i32 0, i32 %j.1, !taffo.info !41, !taffo.initweight !92
  store float %mul55, float* %arrayidx57, align 4, !taffo.info !52, !taffo.initweight !94
  br label %for.inc58

for.inc58:                                        ; preds = %for.body36
  %inc59 = add nsw i32 %j.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !127

for.end60:                                        ; preds = %for.cond33
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond29, !llvm.loop !128

for.end63:                                        ; preds = %for.cond29
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %inc65 = add nsw i32 %t.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !129

for.end66:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [15 x float]* noundef %A, [15 x float]* noundef %B) #0 !taffo.initweight !130 !taffo.funinfo !131 !taffo.sourceFunction !55 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19 ], !taffo.info !132, !taffo.initweight !44
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !134, !taffo.initweight !53
  br i1 %cmp, label %for.body, label %for.end21, !taffo.info !132, !taffo.initweight !56

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !132, !taffo.initweight !44
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !134, !taffo.initweight !53
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !132, !taffo.initweight !56

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.info !135, !taffo.initweight !53
  %add = add nsw i32 %j.0, 2, !taffo.info !137, !taffo.initweight !53, !taffo.constinfo !21
  %conv6 = sitofp i32 %add to float, !taffo.info !139, !taffo.initweight !56
  %mul = fmul float %conv, %conv6, !taffo.info !141, !taffo.initweight !56
  %add7 = fadd float %mul, 2.000000e+00, !taffo.info !144, !taffo.initweight !68, !taffo.constinfo !146
  %conv8 = sitofp i32 %n to float, !taffo.info !147
  %div = fdiv float %add7, %conv8, !taffo.info !149, !taffo.initweight !91
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 %i.0, !taffo.info !151, !taffo.initweight !53
  %arrayidx9 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !151, !taffo.initweight !53
  store float %div, float* %arrayidx9, align 4, !taffo.info !152, !taffo.initweight !56
  %conv10 = sitofp i32 %i.0 to float, !taffo.info !135, !taffo.initweight !53
  %add11 = add nsw i32 %j.0, 3, !taffo.info !153, !taffo.initweight !53, !taffo.constinfo !21
  %conv12 = sitofp i32 %add11 to float, !taffo.info !155, !taffo.initweight !56
  %mul13 = fmul float %conv10, %conv12, !taffo.info !156, !taffo.initweight !56
  %add14 = fadd float %mul13, 3.000000e+00, !taffo.info !158, !taffo.initweight !68, !taffo.constinfo !160
  %conv15 = sitofp i32 %n to float, !taffo.info !147
  %div16 = fdiv float %add14, %conv15, !taffo.info !163, !taffo.initweight !91
  %arrayidx17 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 %i.0, !taffo.info !165, !taffo.initweight !53
  %arrayidx18 = getelementptr inbounds [15 x float], [15 x float]* %arrayidx17, i32 0, i32 %j.0, !taffo.info !165, !taffo.initweight !53
  store float %div16, float* %arrayidx18, align 4, !taffo.info !152, !taffo.initweight !56
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !166, !taffo.initweight !53, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !168

for.end:                                          ; preds = %for.cond3
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %i.0, 1, !taffo.info !166, !taffo.initweight !53, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !169

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !170 !taffo.funinfo !171 !taffo.sourceFunction !58 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !41, !taffo.initweight !92
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !41, !taffo.initweight !94
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !41, !taffo.initweight !98
  %conv = sitofp i32 %factor to float, !taffo.info !174
  %mul = fmul float %1, %conv, !taffo.info !176, !taffo.initweight !109
  %2 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !41, !taffo.initweight !92
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !41, !taffo.initweight !94
  store float %mul, float* %arrayidx6, align 4, !taffo.info !52, !taffo.initweight !98
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !179

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !180

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !170 !taffo.funinfo !181 !taffo.sourceFunction !58 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !79
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !79
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !46, !taffo.initweight !92
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !46, !taffo.initweight !94
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !46, !taffo.initweight !98
  %conv = sitofp i32 %factor to float, !taffo.info !174
  %mul = fmul float %1, %conv, !taffo.info !182, !taffo.initweight !109
  %2 = mul nsw i32 %i.0, %m, !taffo.info !81
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !46, !taffo.initweight !92
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !46, !taffo.initweight !94
  store float %mul, float* %arrayidx6, align 4, !taffo.info !59, !taffo.initweight !98
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !185

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !186

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x406E222220BC382A}
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
!12 = !{!"clang version 15.0.7 (https://github.com/llvm/llvm-project.git 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)"}
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
!26 = !{i32 -1, i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!28 = distinct !{!28, !23}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = !{void (i32, i32, float*, i32)* @scale_2d.3, void (i32, i32, float*, i32)* @scale_2d.4}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!35 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{}
!40 = !{i1 true}
!41 = !{!42, !43, i1 false, i2 -1}
!42 = !{!"fixp", i32 32, i32 24}
!43 = !{double 0x40011110E453D20F, double 0x406E222220BC382A}
!44 = !{i32 0}
!45 = !{!"A"}
!46 = !{!47, !48, i1 false, i2 -1}
!47 = !{!"fixp", i32 32, i32 23}
!48 = !{double 3.200000e+00, double 0x407011112018A43C}
!49 = !{!42, i1 false, i1 false, i2 -1}
!50 = !{i32 1}
!51 = !{!47, i1 false, i1 false, i2 -1}
!52 = !{i1 false, !43, i1 false, i2 -1}
!53 = !{i32 2}
!54 = !{i1 false, i1 false, i1 false, i1 false}
!55 = distinct !{null}
!56 = !{i32 3}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{void (i32, i32, float*, i32)* @scale_2d}
!59 = !{i1 false, !48, i1 false, i2 -1}
!60 = !{i1 false}
!61 = distinct !{null}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 1.600000e+01}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 2.560000e+02}
!68 = !{i32 4}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 2.560000e+02}
!71 = distinct !{!71, !23}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 1.600000e+01}
!74 = distinct !{!74, !23}
!75 = !{i1 false, i1 false, i1 false}
!76 = !{i32 1, !77, i32 1, !0}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 1.500000e+01, double 1.500000e+01}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 1.000000e+00}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0.000000e+00, double 0.000000e+00}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = !{i32 -1, i32 -1, i32 2, i32 2}
!86 = !{i32 1, !16, i32 1, !77, i32 1, !41, i32 1, !46}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 1.000000e+00, double 2.000000e+00}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.400000e+01, double 1.400000e+01}
!91 = !{i32 5}
!92 = !{i32 6}
!93 = !{!47, !43, i1 false, i2 -1}
!94 = !{i32 7}
!95 = !{!96, !97, i1 false, i2 -1}
!96 = !{!"fixp", i32 32, i32 22}
!97 = !{double 0x40111110E453D20F, double 0x407E222220BC382A}
!98 = !{i32 8}
!99 = !{!96, !43, i1 false, i2 -1}
!100 = !{!96, !101, i1 false, i2 -1}
!101 = !{double 0x40199999567DBB16, double 0x40869999988D2A20}
!102 = !{!103, !104, i1 false, i2 -1}
!103 = !{!"fixp", i32 32, i32 21}
!104 = !{double 0x40211110E453D20F, double 0x408E222220BC382A}
!105 = !{!103, !106, i1 false, i2 -1}
!106 = !{double 0x402555551D68C693, double 0x4092D5555475A31A}
!107 = !{!42, !108, i1 false, i2 -1}
!108 = !{double 0x40011110E8981648, double 0x406E22222844C0B2}
!109 = !{i32 9}
!110 = !{!111, i1 false}
!111 = !{i1 false, !112, i1 false, i2 0}
!112 = !{double 0x3FC99999A0000000, double 0x3FC99999A0000000}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = !{!96, !48, i1 false, i2 -1}
!116 = !{!96, !117, i1 false, i2 -1}
!117 = !{double 6.400000e+00, double 0x408011112018A43C}
!118 = !{!103, !119, i1 false, i2 -1}
!119 = !{double 0x4023333333333334, double 0x40881999B024F65A}
!120 = !{!103, !48, i1 false, i2 -1}
!121 = !{!103, !122, i1 false, i2 -1}
!122 = !{double 1.280000e+01, double 0x409011112018A43C}
!123 = !{!103, !124, i1 false, i2 -1}
!124 = !{double 1.600000e+01, double 0x40941555681ECD4B}
!125 = !{!103, !126, i1 false, i2 -1}
!126 = !{double 0x40099999A0000000, double 0x40701111241CE884}
!127 = distinct !{!127, !23}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !23}
!130 = !{i32 -1, i32 2, i32 2}
!131 = !{i32 1, !77, i32 1, !41, i32 1, !46}
!132 = !{i1 false, !133, i1 false, i2 -1}
!133 = !{double -1.500000e+01, double 1.500000e+01}
!134 = !{i1 false, !65, i1 false, i2 -1}
!135 = !{!136, !133, i1 false, i2 -1}
!136 = !{!"fixp", i32 -32, i32 27}
!137 = !{i1 false, !138, i1 false, i2 -1}
!138 = !{double -1.300000e+01, double 1.700000e+01}
!139 = !{!140, !138, i1 false, i2 -1}
!140 = !{!"fixp", i32 -32, i32 26}
!141 = !{!142, !143, i1 false, i2 -1}
!142 = !{!"fixp", i32 -32, i32 22}
!143 = !{double -2.550000e+02, double 2.550000e+02}
!144 = !{!142, !145, i1 false, i2 -1}
!145 = !{double -2.530000e+02, double 2.570000e+02}
!146 = !{i1 false, !19}
!147 = !{!148, !78, i1 false, i2 1}
!148 = !{!"fixp", i32 32, i32 28}
!149 = !{!140, !150, i1 false, i2 -1}
!150 = !{double 0xC030DDDDDDDDDDDE, double 0x4031222222222222}
!151 = !{!42, !43, i1 false, i2 1}
!152 = !{i1 false, i1 false, i1 false, i2 1}
!153 = !{i1 false, !154, i1 false, i2 -1}
!154 = !{double -1.200000e+01, double 1.800000e+01}
!155 = !{!140, !154, i1 false, i2 -1}
!156 = !{!142, !157, i1 false, i2 -1}
!157 = !{double -2.700000e+02, double 2.700000e+02}
!158 = !{!142, !159, i1 false, i2 -1}
!159 = !{double -2.670000e+02, double 2.730000e+02}
!160 = !{i1 false, !161}
!161 = !{i1 false, !162, i1 false, i2 0}
!162 = !{double 3.000000e+00, double 3.000000e+00}
!163 = !{!140, !164, i1 false, i2 -1}
!164 = !{double -1.780000e+01, double 1.820000e+01}
!165 = !{!47, !48, i1 false, i2 1}
!166 = !{i1 false, !167, i1 false, i2 -1}
!167 = !{double -1.400000e+01, double 1.600000e+01}
!168 = distinct !{!168, !23}
!169 = distinct !{!169, !23}
!170 = !{i32 -1, i32 -1, i32 3, i32 -1}
!171 = !{i32 1, !77, i32 1, !77, i32 1, !41, i32 1, !172}
!172 = !{i1 false, !173, i1 false, i2 0}
!173 = !{double 1.600000e+01, double 1.600000e+01}
!174 = !{!175, !173, i1 false, i2 1}
!175 = !{!"fixp", i32 32, i32 27}
!176 = !{!177, !178, i1 false, i2 -1}
!177 = !{!"fixp", i32 32, i32 20}
!178 = !{double 0x40411110E453D20F, double 0x40AE222220BC382A}
!179 = distinct !{!179, !23}
!180 = distinct !{!180, !23}
!181 = !{i32 1, !77, i32 1, !77, i32 1, !46, i32 1, !172}
!182 = !{!183, !184, i1 false, i2 -1}
!183 = !{!"fixp", i32 32, i32 19}
!184 = !{double 5.120000e+01, double 0x40B011112018A43C}
!185 = distinct !{!185, !23}
!186 = distinct !{!186, !23}
