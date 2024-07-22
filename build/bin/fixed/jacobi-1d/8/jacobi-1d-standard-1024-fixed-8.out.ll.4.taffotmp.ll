; ModuleID = './build/bin/fixed/jacobi-1d/8/jacobi-1d-standard-1024-fixed-8.out.ll.3.taffotmp.ll'
source_filename = "./sources/jacobi-1d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [15 x float] zeroinitializer, align 4, !taffo.info !0
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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 !taffo.equivalentChild !28 {
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
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !30 !taffo.funinfo !31 {
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
  %A = alloca [15 x float], align 4, !taffo.info !41, !taffo.initweight !44, !taffo.target !45
  %B = alloca [15 x float], align 4, !taffo.info !46, !taffo.initweight !44
  %A1 = bitcast [15 x float]* %A to i8*, !taffo.info !48, !taffo.initweight !49, !taffo.target !45
  %B2 = bitcast [15 x float]* %B to i8*, !taffo.info !48, !taffo.initweight !49
  %arraydecay = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !49, !taffo.target !45
  %arraydecay3 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.info !46, !taffo.initweight !49
  call void @init_array.4(i32 noundef 15, float* noundef %arraydecay, float* noundef %arraydecay3), !taffo.info !50, !taffo.initweight !51, !taffo.constinfo !52, !taffo.target !45, !taffo.originalCall !53
  %arraydecay4 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !49, !taffo.target !45
  call void @scale_1d.1(i32 noundef 15, float* noundef %arraydecay4, i32 noundef 1024), !taffo.info !50, !taffo.initweight !51, !taffo.constinfo !52, !taffo.target !45, !taffo.originalCall !54
  %arraydecay5 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.info !46, !taffo.initweight !49
  call void @scale_1d.1(i32 noundef 15, float* noundef %arraydecay5, i32 noundef 1024), !taffo.info !55, !taffo.initweight !51, !taffo.constinfo !52, !taffo.originalCall !54
  call void @timer_start(), !taffo.constinfo !56
  %arraydecay6 = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 0, !taffo.info !41, !taffo.initweight !49, !taffo.target !45
  %arraydecay7 = getelementptr inbounds [15 x float], [15 x float]* %B, i32 0, i32 0, !taffo.info !46, !taffo.initweight !49
  call void @kernel_jacobi_1d.2(i32 noundef 10, i32 noundef 15, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.info !50, !taffo.initweight !51, !taffo.constinfo !57, !taffo.target !45, !taffo.originalCall !58
  call void @timer_stop(), !taffo.constinfo !56
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !59
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !61
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [15 x float], [15 x float]* %A, i32 0, i32 %i.0, !taffo.info !41, !taffo.initweight !49, !taffo.target !45
  %0 = load float, float* %arrayidx, align 4, !taffo.info !41, !taffo.initweight !51, !taffo.target !45
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  store float %0, float* %arrayidx8, align 4, !taffo.info !50, !taffo.initweight !63, !taffo.target !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 15, float* noundef getelementptr inbounds ([15 x float], [15 x float]* @A_float, i32 0, i32 0)), !taffo.constinfo !67
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %A) #0 !taffo.initweight !24 !taffo.funinfo !68 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !73, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !71
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !67
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !52
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !76 !taffo.funinfo !77 !taffo.sourceFunction !54 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !41, !taffo.initweight !80
  %0 = load float, float* %arrayidx, align 4, !taffo.info !41, !taffo.initweight !81
  %conv = sitofp i32 %factor to float, !taffo.info !82
  %mul = fmul float %0, %conv, !taffo.info !83, !taffo.initweight !86
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !41, !taffo.initweight !80
  store float %mul, float* %arrayidx1, align 4, !taffo.info !50, !taffo.initweight !81
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.2(i32 noundef %tsteps, i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !88 !taffo.funinfo !89 !taffo.sourceFunction !58 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ], !taffo.info !61
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ], !taffo.info !90
  %sub = sub nsw i32 %n, 1, !taffo.info !92, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !71
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  %arrayidx = getelementptr inbounds float, float* %A, i32 %sub4, !taffo.info !41, !taffo.initweight !80
  %0 = load float, float* %arrayidx, align 4, !taffo.info !94, !taffo.initweight !81
  %arrayidx5 = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !41, !taffo.initweight !80
  %1 = load float, float* %arrayidx5, align 4, !taffo.info !94, !taffo.initweight !81
  %add = fadd float %0, %1, !taffo.info !96, !taffo.initweight !86
  %add6 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx7 = getelementptr inbounds float, float* %A, i32 %add6, !taffo.info !41, !taffo.initweight !80
  %2 = load float, float* %arrayidx7, align 4, !taffo.info !94, !taffo.initweight !81
  %add8 = fadd float %add, %2, !taffo.info !98, !taffo.initweight !86
  %conv = fpext float %add8 to double, !taffo.info !98, !taffo.initweight !100
  %mul = fmul double 3.333300e-01, %conv, !taffo.info !101, !taffo.initweight !103, !taffo.constinfo !104
  %conv9 = fptrunc double %mul to float, !taffo.info !107, !taffo.initweight !109
  %arrayidx10 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.info !46, !taffo.initweight !80
  store float %conv9, float* %arrayidx10, align 4, !taffo.info !55, !taffo.initweight !81
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !110

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !90
  %sub12 = sub nsw i32 %n, 1, !taffo.info !92, !taffo.constinfo !21
  %cmp13 = icmp slt i32 %i.1, %sub12, !taffo.info !71
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %sub16 = sub nsw i32 %i.1, 1, !taffo.info !73, !taffo.constinfo !21
  %arrayidx17 = getelementptr inbounds float, float* %B, i32 %sub16, !taffo.info !46, !taffo.initweight !80
  %3 = load float, float* %arrayidx17, align 4, !taffo.info !111, !taffo.initweight !81
  %arrayidx18 = getelementptr inbounds float, float* %B, i32 %i.1, !taffo.info !46, !taffo.initweight !80
  %4 = load float, float* %arrayidx18, align 4, !taffo.info !111, !taffo.initweight !81
  %add19 = fadd float %3, %4, !taffo.info !112, !taffo.initweight !86
  %add20 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx21 = getelementptr inbounds float, float* %B, i32 %add20, !taffo.info !46, !taffo.initweight !80
  %5 = load float, float* %arrayidx21, align 4, !taffo.info !111, !taffo.initweight !81
  %add22 = fadd float %add19, %5, !taffo.info !114, !taffo.initweight !86
  %conv23 = fpext float %add22 to double, !taffo.info !114, !taffo.initweight !100
  %mul24 = fmul double 3.333300e-01, %conv23, !taffo.info !116, !taffo.initweight !103, !taffo.constinfo !104
  %conv25 = fptrunc double %mul24 to float, !taffo.info !118, !taffo.initweight !109
  %arrayidx26 = getelementptr inbounds float, float* %A, i32 %i.1, !taffo.info !41, !taffo.initweight !80
  store float %conv25, float* %arrayidx26, align 4, !taffo.info !50, !taffo.initweight !81
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !120

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %t.0, 1, !taffo.info !71, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !121

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %n, float* noundef %A, float* noundef %B) #0 !taffo.initweight !122 !taffo.funinfo !123 !taffo.sourceFunction !53 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !124, !taffo.initweight !44
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !126, !taffo.initweight !51
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !124, !taffo.initweight !63

for.body:                                         ; preds = %for.cond
  %conv = sitofp i32 %i.0 to float, !taffo.info !127, !taffo.initweight !51
  %add = fadd float %conv, 2.000000e+00, !taffo.info !129, !taffo.initweight !63, !taffo.constinfo !131
  %conv2 = sitofp i32 %n to float, !taffo.info !132
  %div = fdiv float %add, %conv2, !taffo.info !134, !taffo.initweight !136
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !137, !taffo.initweight !51
  store float %div, float* %arrayidx, align 4, !taffo.info !138, !taffo.initweight !63
  %conv3 = sitofp i32 %i.0 to float, !taffo.info !127, !taffo.initweight !51
  %add4 = fadd float %conv3, 3.000000e+00, !taffo.info !139, !taffo.initweight !63, !taffo.constinfo !141
  %conv5 = sitofp i32 %n to float, !taffo.info !132
  %div6 = fdiv float %add4, %conv5, !taffo.info !144, !taffo.initweight !136
  %arrayidx7 = getelementptr inbounds float, float* %B, i32 %i.0, !taffo.info !146, !taffo.initweight !51
  store float %div6, float* %arrayidx7, align 4, !taffo.info !138, !taffo.initweight !63
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !147, !taffo.initweight !51, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !149

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x409111112018A43C}
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
!28 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.1}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
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
!42 = !{!"fixp", i32 32, i32 21}
!43 = !{double 0x406111111F0C34C2, double 0x409111112018A43C}
!44 = !{i32 0}
!45 = !{!"A"}
!46 = !{!42, !47, i1 false, i2 -1}
!47 = !{double 0x406999999FE43676, double 0x409222221FF2E48F}
!48 = !{!42, i1 false, i1 false, i2 -1}
!49 = !{i32 1}
!50 = !{i1 false, !43, i1 false, i2 -1}
!51 = !{i32 2}
!52 = !{i1 false, i1 false, i1 false, i1 false}
!53 = distinct !{null}
!54 = !{void (i32, float*, i32)* @scale_1d}
!55 = !{i1 false, !47, i1 false, i2 -1}
!56 = !{i1 false}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = distinct !{null}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 1.600000e+01}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 1.000000e+00}
!63 = !{i32 3}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 1.000000e+00, double 1.600000e+01}
!66 = distinct !{!66, !23}
!67 = !{i1 false, i1 false, i1 false}
!68 = !{i32 1, !69, i32 1, !0}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.500000e+01, double 1.500000e+01}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 1.000000e+00}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 0.000000e+00}
!75 = distinct !{!75, !23}
!76 = !{i32 -1, i32 2, i32 -1}
!77 = !{i32 1, !69, i32 1, !41, i32 1, !78}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.024000e+03, double 1.024000e+03}
!80 = !{i32 5}
!81 = !{i32 6}
!82 = !{!42, !79, i1 false, i2 1}
!83 = !{!84, !85, i1 false, i2 -1}
!84 = !{!"fixp", i32 32, i32 11}
!85 = !{double 0x410111111F0C34C2, double 0x413111112018A43C}
!86 = !{i32 7}
!87 = distinct !{!87, !23}
!88 = !{i32 -1, i32 -1, i32 2, i32 2}
!89 = !{i32 1, !16, i32 1, !69, i32 1, !41, i32 1, !46}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 1.000000e+00, double 2.000000e+00}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 1.400000e+01, double 1.400000e+01}
!94 = !{!95, !43, i1 false, i2 -1}
!95 = !{!"fixp", i32 32, i32 20}
!96 = !{!95, !97, i1 false, i2 -1}
!97 = !{double 0x407111111F0C34C2, double 0x40A111112018A43C}
!98 = !{!95, !99, i1 false, i2 -1}
!99 = !{double 0x40799999AE924F23, double 0x40A99999B024F65A}
!100 = !{i32 8}
!101 = !{!95, !102, i1 false, i2 -1}
!102 = !{double 0x40611105EFBC6B1F, double 0x40911105F0C8D9E9}
!103 = !{i32 9}
!104 = !{!105, i1 false}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 3.333300e-01, double 3.333300e-01}
!107 = !{!42, !108, i1 false, i2 -1}
!108 = !{double 0x40611105E0000000, double 0x4091110600000000}
!109 = !{i32 10}
!110 = distinct !{!110, !23}
!111 = !{!95, !47, i1 false, i2 -1}
!112 = !{!95, !113, i1 false, i2 -1}
!113 = !{double 0x407999999FE43676, double 0x40A222221FF2E48F}
!114 = !{!95, !115, i1 false, i2 -1}
!115 = !{double 0x4083333337EB28D8, double 0x40AB33332FEC56D6}
!116 = !{!95, !117, i1 false, i2 -1}
!117 = !{double 0x40699988D8EC91A0, double 0x409222163DAE297D}
!118 = !{!42, !119, i1 false, i2 -1}
!119 = !{double 0x40699988C0000000, double 0x4092221640000000}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = !{i32 -1, i32 2, i32 2}
!123 = !{i32 1, !69, i32 1, !41, i32 1, !46}
!124 = !{i1 false, !125, i1 false, i2 -1}
!125 = !{double -1.500000e+01, double 1.500000e+01}
!126 = !{i1 false, !62, i1 false, i2 -1}
!127 = !{!128, !125, i1 false, i2 -1}
!128 = !{!"fixp", i32 -32, i32 26}
!129 = !{!128, !130, i1 false, i2 -1}
!130 = !{double -1.300000e+01, double 1.700000e+01}
!131 = !{i1 false, !19}
!132 = !{!133, !70, i1 false, i2 1}
!133 = !{!"fixp", i32 -32, i32 27}
!134 = !{!133, !135, i1 false, i2 -1}
!135 = !{double 0xBFEBBBBBBBBBBBBC, double 0x3FF2222222222222}
!136 = !{i32 4}
!137 = !{!42, !43, i1 false, i2 1}
!138 = !{i1 false, i1 false, i1 false, i2 1}
!139 = !{!128, !140, i1 false, i2 -1}
!140 = !{double -1.200000e+01, double 1.800000e+01}
!141 = !{i1 false, !142}
!142 = !{i1 false, !143, i1 false, i2 0}
!143 = !{double 3.000000e+00, double 3.000000e+00}
!144 = !{!133, !145, i1 false, i2 -1}
!145 = !{double -8.000000e-01, double 1.200000e+00}
!146 = !{!42, !47, i1 false, i2 1}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double -1.400000e+01, double 1.600000e+01}
!149 = distinct !{!149, !23}
