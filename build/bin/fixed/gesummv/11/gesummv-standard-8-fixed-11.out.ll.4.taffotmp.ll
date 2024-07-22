; ModuleID = './build/bin/fixed/gesummv/11/gesummv-standard-8-fixed-11.out.ll.3.taffotmp.ll'
source_filename = "./sources/gesummv.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@y_float = dso_local global [16 x float] zeroinitializer, align 4, !taffo.info !0
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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.equivalentChild !29 {
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
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.equivalentChild !33 {
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
  br label %for.cond1, !llvm.loop !34

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !35

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_3d(i32 noundef %n, i32 noundef %m, i32 noundef %p, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !36 !taffo.funinfo !37 {
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
  br label %for.cond4, !llvm.loop !38

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !39

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %inc16 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !40

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !41 !taffo.funinfo !41 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !41 !taffo.funinfo !41 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !42 {
entry:
  %alpha = alloca float, align 4, !taffo.info !43, !taffo.initweight !46
  %beta = alloca float, align 4, !taffo.info !47, !taffo.initweight !46
  %A = alloca [16 x [16 x float]], align 4, !taffo.info !49, !taffo.initweight !46
  %B = alloca [16 x [16 x float]], align 4, !taffo.info !49, !taffo.initweight !46
  %tmp = alloca [16 x float], align 4, !taffo.info !52, !taffo.initweight !46
  %x = alloca [16 x float], align 4, !taffo.info !49, !taffo.initweight !46
  %y = alloca [16 x float], align 4, !taffo.info !55, !taffo.initweight !46, !taffo.target !57
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !58, !taffo.initweight !59
  %beta2 = bitcast float* %beta to i8*, !taffo.info !58, !taffo.initweight !59
  %A3 = bitcast [16 x [16 x float]]* %A to i8*, !taffo.info !60, !taffo.initweight !59
  %B4 = bitcast [16 x [16 x float]]* %B to i8*, !taffo.info !60, !taffo.initweight !59
  %tmp5 = bitcast [16 x float]* %tmp to i8*, !taffo.info !61, !taffo.initweight !59
  %x6 = bitcast [16 x float]* %x to i8*, !taffo.info !60, !taffo.initweight !59
  %y7 = bitcast [16 x float]* %y to i8*, !taffo.info !62, !taffo.initweight !59, !taffo.target !57
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !49, !taffo.initweight !59
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !49, !taffo.initweight !59
  %arraydecay9 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.info !49, !taffo.initweight !59
  %arraydecay10 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.info !52, !taffo.initweight !59
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.info !55, !taffo.initweight !59, !taffo.target !57
  call void @init_array.7(i32 noundef 16, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.info !63, !taffo.initweight !59, !taffo.constinfo !64, !taffo.originalCall !65
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 8), !taffo.info !63, !taffo.initweight !59, !taffo.constinfo !66, !taffo.originalCall !67
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 8), !taffo.info !68, !taffo.initweight !59, !taffo.constinfo !66, !taffo.originalCall !67
  %arraydecay12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !49, !taffo.initweight !59
  %0 = bitcast [16 x float]* %arraydecay12 to float*, !taffo.info !49, !taffo.initweight !69
  call void @scale_2d.8(i32 noundef 16, i32 noundef 16, float* noundef %0, i32 noundef 8), !taffo.info !70, !taffo.initweight !71, !taffo.constinfo !72, !taffo.originalCall !73
  %arraydecay13 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !49, !taffo.initweight !59
  %1 = bitcast [16 x float]* %arraydecay13 to float*, !taffo.info !49, !taffo.initweight !69
  call void @scale_2d.8(i32 noundef 16, i32 noundef 16, float* noundef %1, i32 noundef 8), !taffo.info !70, !taffo.initweight !71, !taffo.constinfo !72, !taffo.originalCall !73
  %arraydecay14 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.info !52, !taffo.initweight !59
  call void @scale_1d.3(i32 noundef 16, float* noundef %arraydecay14, i32 noundef 8), !taffo.info !74, !taffo.initweight !69, !taffo.constinfo !75, !taffo.originalCall !76
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.info !49, !taffo.initweight !59
  call void @scale_1d.4(i32 noundef 16, float* noundef %arraydecay15, i32 noundef 8), !taffo.info !70, !taffo.initweight !69, !taffo.constinfo !75, !taffo.originalCall !76
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.info !55, !taffo.initweight !59, !taffo.target !57
  call void @scale_1d.6(i32 noundef 16, float* noundef %arraydecay16, i32 noundef 8), !taffo.info !77, !taffo.initweight !69, !taffo.constinfo !75, !taffo.target !57, !taffo.originalCall !76
  call void @timer_start(), !taffo.constinfo !78
  %2 = load float, float* %alpha, align 4, !taffo.info !43, !taffo.initweight !59
  %3 = load float, float* %beta, align 4, !taffo.info !47, !taffo.initweight !59
  %arraydecay17 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !49, !taffo.initweight !59
  %arraydecay18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !49, !taffo.initweight !59
  %arraydecay19 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.info !52, !taffo.initweight !59
  %arraydecay20 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.info !49, !taffo.initweight !59
  %arraydecay21 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.info !55, !taffo.initweight !59, !taffo.target !57
  call void @kernel_gesummv.5(i32 noundef 16, float noundef %2, float noundef %3, [16 x float]* noundef %arraydecay17, [16 x float]* noundef %arraydecay18, float* noundef %arraydecay19, float* noundef %arraydecay20, float* noundef %arraydecay21), !taffo.info !63, !taffo.initweight !69, !taffo.constinfo !64, !taffo.originalCall !79
  call void @timer_stop(), !taffo.constinfo !78
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !82
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 %i.0, !taffo.info !55, !taffo.initweight !59, !taffo.target !57
  %4 = load float, float* %arrayidx, align 4, !taffo.info !55, !taffo.initweight !69, !taffo.target !57
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %4, float* %arrayidx22, align 4, !taffo.info !77, !taffo.initweight !71, !taffo.target !57
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !84, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 16, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !66
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !24 !taffo.funinfo !87 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !92, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !90
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !66
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !75
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !95 !taffo.funinfo !96 !taffo.sourceFunction !67 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !76 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !52, !taffo.initweight !101
  %0 = load float, float* %arrayidx, align 4, !taffo.info !52, !taffo.initweight !102
  %conv = sitofp i32 %factor to float, !taffo.info !103
  %mul = fmul float %0, %conv, !taffo.info !104, !taffo.initweight !107
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !52, !taffo.initweight !101
  store float %mul, float* %arrayidx1, align 4, !taffo.info !74, !taffo.initweight !102
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !108

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !99 !taffo.funinfo !109 !taffo.sourceFunction !76 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !49, !taffo.initweight !101
  %0 = load float, float* %arrayidx, align 4, !taffo.info !110, !taffo.initweight !102
  %conv = sitofp i32 %factor to float, !taffo.info !112
  %mul = fmul float %0, %conv, !taffo.info !113, !taffo.initweight !107
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !49, !taffo.initweight !101
  store float %mul, float* %arrayidx1, align 4, !taffo.info !70, !taffo.initweight !102
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !115

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !116 !taffo.funinfo !117 !taffo.sourceFunction !79 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !52, !taffo.initweight !101
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.info !118, !taffo.initweight !101, !taffo.constinfo !119
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !55, !taffo.initweight !101
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.info !118, !taffo.initweight !101, !taffo.constinfo !119
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !82
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !90
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.info !49, !taffo.initweight !101
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %j.0, !taffo.info !49, !taffo.initweight !102
  %0 = load float, float* %arrayidx6, align 4, !taffo.info !110, !taffo.initweight !107
  %arrayidx7 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.info !49, !taffo.initweight !101
  %1 = load float, float* %arrayidx7, align 4, !taffo.info !110, !taffo.initweight !102
  %mul = fmul float %0, %1, !taffo.info !120, !taffo.initweight !107
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !52, !taffo.initweight !101
  %2 = load float, float* %arrayidx8, align 4, !taffo.info !52, !taffo.initweight !102
  %add = fadd float %mul, %2, !taffo.info !122, !taffo.initweight !107
  %arrayidx9 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !52, !taffo.initweight !101
  store float %add, float* %arrayidx9, align 4, !taffo.info !74, !taffo.initweight !102
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !49, !taffo.initweight !101
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !49, !taffo.initweight !102
  %3 = load float, float* %arrayidx11, align 4, !taffo.info !110, !taffo.initweight !107
  %arrayidx12 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.info !49, !taffo.initweight !101
  %4 = load float, float* %arrayidx12, align 4, !taffo.info !110, !taffo.initweight !102
  %mul13 = fmul float %3, %4, !taffo.info !120, !taffo.initweight !107
  %arrayidx14 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !55, !taffo.initweight !101
  %5 = load float, float* %arrayidx14, align 4, !taffo.info !55, !taffo.initweight !102
  %add15 = fadd float %mul13, %5, !taffo.info !124, !taffo.initweight !107
  %arrayidx16 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !55, !taffo.initweight !101
  store float %add15, float* %arrayidx16, align 4, !taffo.info !77, !taffo.initweight !102
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !126

for.end:                                          ; preds = %for.cond2
  %arrayidx17 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !52, !taffo.initweight !101
  %6 = load float, float* %arrayidx17, align 4, !taffo.info !52, !taffo.initweight !102
  %mul18 = fmul float %alpha, %6, !taffo.info !127, !taffo.initweight !101
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !55, !taffo.initweight !101
  %7 = load float, float* %arrayidx19, align 4, !taffo.info !55, !taffo.initweight !102
  %mul20 = fmul float %beta, %7, !taffo.info !130, !taffo.initweight !101
  %add21 = fadd float %mul18, %mul20, !taffo.info !132, !taffo.initweight !102
  %arrayidx22 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !55, !taffo.initweight !101
  store float %add21, float* %arrayidx22, align 4, !taffo.info !77, !taffo.initweight !102
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !134

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !99 !taffo.funinfo !135 !taffo.sourceFunction !76 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !55, !taffo.initweight !101
  %0 = load float, float* %arrayidx, align 4, !taffo.info !55, !taffo.initweight !102
  %conv = sitofp i32 %factor to float, !taffo.info !103
  %mul = fmul float %0, %conv, !taffo.info !136, !taffo.initweight !107
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !55, !taffo.initweight !101
  store float %mul, float* %arrayidx1, align 4, !taffo.info !77, !taffo.initweight !102
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !139

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !140 !taffo.funinfo !141 !taffo.sourceFunction !65 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !63, !taffo.initweight !142, !taffo.constinfo !143
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !68, !taffo.initweight !142, !taffo.constinfo !145
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !148, !taffo.initweight !46
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !149, !taffo.initweight !69
  br i1 %cmp, label %for.body, label %for.end26, !taffo.info !150, !taffo.initweight !71

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !152, !taffo.initweight !69
  %conv = sitofp i32 %rem to float, !taffo.info !154, !taffo.initweight !71
  %conv3 = sitofp i32 %n to float, !taffo.info !155
  %div = fdiv float %conv, %conv3, !taffo.info !157, !taffo.initweight !142
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !160, !taffo.initweight !69
  store float %div, float* %arrayidx, align 4, !taffo.info !118, !taffo.initweight !71
  %arrayidx4 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !161, !taffo.initweight !69
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !118, !taffo.initweight !71, !taffo.constinfo !119
  %arrayidx5 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !162, !taffo.initweight !69
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.info !118, !taffo.initweight !71, !taffo.constinfo !119
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !148, !taffo.initweight !46
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !149, !taffo.initweight !69
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !150, !taffo.initweight !71

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !163, !taffo.initweight !69
  %add = add nsw i32 %mul, 1, !taffo.info !165, !taffo.initweight !71, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !152, !taffo.initweight !142
  %conv11 = sitofp i32 %rem10 to float, !taffo.info !154, !taffo.initweight !101
  %conv12 = sitofp i32 %n to float, !taffo.info !155
  %div13 = fdiv float %conv11, %conv12, !taffo.info !157, !taffo.initweight !102
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.info !160, !taffo.initweight !69
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !160, !taffo.initweight !69
  store float %div13, float* %arrayidx15, align 4, !taffo.info !118, !taffo.initweight !71
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !163, !taffo.initweight !69
  %add17 = add nsw i32 %mul16, 2, !taffo.info !167, !taffo.initweight !71, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !152, !taffo.initweight !142
  %conv19 = sitofp i32 %rem18 to float, !taffo.info !154, !taffo.initweight !101
  %conv20 = sitofp i32 %n to float, !taffo.info !155
  %div21 = fdiv float %conv19, %conv20, !taffo.info !157, !taffo.initweight !102
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !160, !taffo.initweight !69
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.info !160, !taffo.initweight !69
  store float %div21, float* %arrayidx23, align 4, !taffo.info !118, !taffo.initweight !71
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !169, !taffo.initweight !69, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !170

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !169, !taffo.initweight !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !171

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !172 !taffo.funinfo !173 !taffo.sourceFunction !73 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !90
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !82
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !90
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !92
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !49, !taffo.initweight !102
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !49, !taffo.initweight !107
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !110, !taffo.initweight !174
  %conv = sitofp i32 %factor to float, !taffo.info !112
  %mul = fmul float %1, %conv, !taffo.info !113, !taffo.initweight !175
  %2 = mul nsw i32 %i.0, %m, !taffo.info !92
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !49, !taffo.initweight !102
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !49, !taffo.initweight !107
  store float %mul, float* %arrayidx6, align 4, !taffo.info !70, !taffo.initweight !174
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !176

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !177

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x4086A66680171194}
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
!29 = !{void (i32, float*, i32)* @scale_1d.3, void (i32, float*, i32)* @scale_1d.4, void (i32, float*, i32)* @scale_1d.6}
!30 = distinct !{!30, !23}
!31 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!33 = !{void (i32, i32, float*, i32)* @scale_2d.8, void (i32, i32, float*, i32)* @scale_2d.8}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = !{}
!42 = !{i1 true}
!43 = !{!44, !45, i1 false, i2 -1}
!44 = !{!"fixp", i32 32, i32 30}
!45 = !{double 1.500000e+00, double 1.500000e+00}
!46 = !{i32 0}
!47 = !{!44, !48, i1 false, i2 -1}
!48 = !{double 1.200000e+00, double 1.200000e+00}
!49 = !{!50, !51, i1 false, i2 -1}
!50 = !{!"fixp", i32 32, i32 28}
!51 = !{double 0.000000e+00, double 7.500000e+00}
!52 = !{!53, !54, i1 false, i2 -1}
!53 = !{!"fixp", i32 32, i32 23}
!54 = !{double 0.000000e+00, double 2.820000e+02}
!55 = !{!56, !1, i1 false, i2 -1}
!56 = !{!"fixp", i32 32, i32 22}
!57 = !{!"y"}
!58 = !{!44, i1 false, i1 false, i2 -1}
!59 = !{i32 1}
!60 = !{!50, i1 false, i1 false, i2 -1}
!61 = !{!53, i1 false, i1 false, i2 -1}
!62 = !{!56, i1 false, i1 false, i2 -1}
!63 = !{i1 false, !45, i1 false, i2 -1}
!64 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!65 = distinct !{null}
!66 = !{i1 false, i1 false, i1 false}
!67 = !{void (float*, i32)* @scale_scalar}
!68 = !{i1 false, !48, i1 false, i2 -1}
!69 = !{i32 2}
!70 = !{i1 false, !51, i1 false, i2 -1}
!71 = !{i32 3}
!72 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!73 = !{void (i32, i32, float*, i32)* @scale_2d}
!74 = !{i1 false, !54, i1 false, i2 -1}
!75 = !{i1 false, i1 false, i1 false, i1 false}
!76 = !{void (i32, float*, i32)* @scale_1d}
!77 = !{i1 false, !1, i1 false, i2 -1}
!78 = !{i1 false}
!79 = distinct !{null}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 0.000000e+00, double 1.700000e+01}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 0.000000e+00, double 1.000000e+00}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 1.000000e+00, double 1.700000e+01}
!86 = distinct !{!86, !23}
!87 = !{i32 1, !88, i32 1, !0}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.600000e+01, double 1.600000e+01}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 1.000000e+00, double 1.000000e+00}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 0.000000e+00, double 0.000000e+00}
!94 = distinct !{!94, !23}
!95 = !{i32 1, i32 -1}
!96 = !{i32 1, !43, i32 1, !97}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 8.000000e+00, double 8.000000e+00}
!99 = !{i32 -1, i32 2, i32 -1}
!100 = !{i32 1, !88, i32 1, !52, i32 1, !97}
!101 = !{i32 5}
!102 = !{i32 6}
!103 = !{!50, !98, i1 false, i2 1}
!104 = !{!105, !106, i1 false, i2 -1}
!105 = !{!"fixp", i32 32, i32 20}
!106 = !{double 0.000000e+00, double 2.256000e+03}
!107 = !{i32 7}
!108 = distinct !{!108, !23}
!109 = !{i32 1, !88, i32 1, !49, i32 1, !97}
!110 = !{!111, !51, i1 false, i2 -1}
!111 = !{!"fixp", i32 32, i32 26}
!112 = !{!111, !98, i1 false, i2 1}
!113 = !{!111, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 6.000000e+01}
!115 = distinct !{!115, !23}
!116 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!117 = !{i32 1, !88, i32 1, !43, i32 1, !47, i32 1, !49, i32 1, !49, i32 1, !52, i32 1, !49, i32 1, !55}
!118 = !{i1 false, i1 false, i1 false, i2 1}
!119 = !{!92, i1 false}
!120 = !{!111, !121, i1 false, i2 -1}
!121 = !{double 0.000000e+00, double 5.625000e+01}
!122 = !{!53, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 3.382500e+02}
!124 = !{!56, !125, i1 false, i2 -1}
!125 = !{double 0.000000e+00, double 0x4088686680171194}
!126 = distinct !{!126, !23}
!127 = !{!128, !129, i1 false, i2 -1}
!128 = !{!"fixp", i32 32, i32 21}
!129 = !{double 0.000000e+00, double 4.230000e+02}
!130 = !{!128, !131, i1 false, i2 -1}
!131 = !{double 0.000000e+00, double 0x408B2E1499B5484B}
!132 = !{!128, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 0x4094330A4CDAA426}
!134 = distinct !{!134, !23}
!135 = !{i32 1, !88, i32 1, !55, i32 1, !97}
!136 = !{!137, !138, i1 false, i2 -1}
!137 = !{!"fixp", i32 32, i32 19}
!138 = !{double 0.000000e+00, double 0x40B6A66680171194}
!139 = distinct !{!139, !23}
!140 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!141 = !{i32 1, !88, i32 1, !43, i32 1, !47, i32 1, !49, i32 1, !49, i32 1, !49, i32 1, !52, i32 1, !55}
!142 = !{i32 4}
!143 = !{!144, i1 false}
!144 = !{i1 false, !45, i1 false, i2 0}
!145 = !{!146, i1 false}
!146 = !{i1 false, !147, i1 false, i2 0}
!147 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!148 = !{i1 false, !81, i1 false, i2 1}
!149 = !{i1 false, !83, i1 false, i2 1}
!150 = !{i1 false, !151, i1 false, i2 1}
!151 = !{double 0.000000e+00, double 1.600000e+01}
!152 = !{i1 false, !153, i1 false, i2 1}
!153 = !{double 0.000000e+00, double 1.500000e+01}
!154 = !{!50, !153, i1 false, i2 1}
!155 = !{!156, !89, i1 false, i2 1}
!156 = !{!"fixp", i32 32, i32 27}
!157 = !{!158, !159, i1 false, i2 1}
!158 = !{!"fixp", i32 32, i32 31}
!159 = !{double 0.000000e+00, double 9.375000e-01}
!160 = !{!50, !51, i1 false, i2 1}
!161 = !{!56, !1, i1 false, i2 1}
!162 = !{!53, !54, i1 false, i2 1}
!163 = !{i1 false, !164, i1 false, i2 1}
!164 = !{double 0.000000e+00, double 2.560000e+02}
!165 = !{i1 false, !166, i1 false, i2 1}
!166 = !{double 1.000000e+00, double 2.570000e+02}
!167 = !{i1 false, !168, i1 false, i2 1}
!168 = !{double 2.000000e+00, double 2.580000e+02}
!169 = !{i1 false, !85, i1 false, i2 1}
!170 = distinct !{!170, !23}
!171 = distinct !{!171, !23}
!172 = !{i32 -1, i32 -1, i32 3, i32 -1}
!173 = !{i32 1, !88, i32 1, !88, i32 1, !49, i32 1, !97}
!174 = !{i32 8}
!175 = !{i32 9}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23}
