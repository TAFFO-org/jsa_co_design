; ModuleID = './build/bin/fixed/gesummv/16/gesummv-standard-2-fixed-16.out.ll.3.taffotmp.ll'
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
  %tmp = alloca [16 x float], align 4, !taffo.info !51, !taffo.initweight !46
  %x = alloca [16 x float], align 4, !taffo.info !49, !taffo.initweight !46
  %y = alloca [16 x float], align 4, !taffo.info !54, !taffo.initweight !46, !taffo.target !56
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !57, !taffo.initweight !58
  %beta2 = bitcast float* %beta to i8*, !taffo.info !57, !taffo.initweight !58
  %A3 = bitcast [16 x [16 x float]]* %A to i8*, !taffo.info !57, !taffo.initweight !58
  %B4 = bitcast [16 x [16 x float]]* %B to i8*, !taffo.info !57, !taffo.initweight !58
  %tmp5 = bitcast [16 x float]* %tmp to i8*, !taffo.info !59, !taffo.initweight !58
  %x6 = bitcast [16 x float]* %x to i8*, !taffo.info !57, !taffo.initweight !58
  %y7 = bitcast [16 x float]* %y to i8*, !taffo.info !60, !taffo.initweight !58, !taffo.target !56
  %arraydecay = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !49, !taffo.initweight !58
  %arraydecay8 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !49, !taffo.initweight !58
  %arraydecay9 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.info !49, !taffo.initweight !58
  %arraydecay10 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.info !51, !taffo.initweight !58
  %arraydecay11 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.info !54, !taffo.initweight !58, !taffo.target !56
  call void @init_array.7(i32 noundef 16, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %arraydecay, [16 x float]* noundef %arraydecay8, float* noundef %arraydecay9, float* noundef %arraydecay10, float* noundef %arraydecay11), !taffo.info !61, !taffo.initweight !58, !taffo.constinfo !62, !taffo.originalCall !63
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 2), !taffo.info !61, !taffo.initweight !58, !taffo.constinfo !64, !taffo.originalCall !65
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 2), !taffo.info !66, !taffo.initweight !58, !taffo.constinfo !64, !taffo.originalCall !65
  %arraydecay12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !49, !taffo.initweight !58
  %0 = bitcast [16 x float]* %arraydecay12 to float*, !taffo.info !49, !taffo.initweight !67
  call void @scale_2d.8(i32 noundef 16, i32 noundef 16, float* noundef %0, i32 noundef 2), !taffo.info !68, !taffo.initweight !69, !taffo.constinfo !70, !taffo.originalCall !71
  %arraydecay13 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !49, !taffo.initweight !58
  %1 = bitcast [16 x float]* %arraydecay13 to float*, !taffo.info !49, !taffo.initweight !67
  call void @scale_2d.8(i32 noundef 16, i32 noundef 16, float* noundef %1, i32 noundef 2), !taffo.info !68, !taffo.initweight !69, !taffo.constinfo !70, !taffo.originalCall !71
  %arraydecay14 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.info !51, !taffo.initweight !58
  call void @scale_1d.3(i32 noundef 16, float* noundef %arraydecay14, i32 noundef 2), !taffo.info !72, !taffo.initweight !67, !taffo.constinfo !73, !taffo.originalCall !74
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.info !49, !taffo.initweight !58
  call void @scale_1d.4(i32 noundef 16, float* noundef %arraydecay15, i32 noundef 2), !taffo.info !68, !taffo.initweight !67, !taffo.constinfo !73, !taffo.originalCall !74
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.info !54, !taffo.initweight !58, !taffo.target !56
  call void @scale_1d.6(i32 noundef 16, float* noundef %arraydecay16, i32 noundef 2), !taffo.info !75, !taffo.initweight !67, !taffo.constinfo !73, !taffo.target !56, !taffo.originalCall !74
  call void @timer_start(), !taffo.constinfo !76
  %2 = load float, float* %alpha, align 4, !taffo.info !43, !taffo.initweight !58
  %3 = load float, float* %beta, align 4, !taffo.info !47, !taffo.initweight !58
  %arraydecay17 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %A, i32 0, i32 0, !taffo.info !49, !taffo.initweight !58
  %arraydecay18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]]* %B, i32 0, i32 0, !taffo.info !49, !taffo.initweight !58
  %arraydecay19 = getelementptr inbounds [16 x float], [16 x float]* %tmp, i32 0, i32 0, !taffo.info !51, !taffo.initweight !58
  %arraydecay20 = getelementptr inbounds [16 x float], [16 x float]* %x, i32 0, i32 0, !taffo.info !49, !taffo.initweight !58
  %arraydecay21 = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 0, !taffo.info !54, !taffo.initweight !58, !taffo.target !56
  call void @kernel_gesummv.5(i32 noundef 16, float noundef %2, float noundef %3, [16 x float]* noundef %arraydecay17, [16 x float]* noundef %arraydecay18, float* noundef %arraydecay19, float* noundef %arraydecay20, float* noundef %arraydecay21), !taffo.info !61, !taffo.initweight !67, !taffo.constinfo !62, !taffo.originalCall !77
  call void @timer_stop(), !taffo.constinfo !76
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %y, i32 0, i32 %i.0, !taffo.info !54, !taffo.initweight !58, !taffo.target !56
  %4 = load float, float* %arrayidx, align 4, !taffo.info !54, !taffo.initweight !67, !taffo.target !56
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %4, float* %arrayidx22, align 4, !taffo.info !75, !taffo.initweight !69, !taffo.target !56
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !82, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 16, float* noundef getelementptr inbounds ([16 x float], [16 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !64
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !24 !taffo.funinfo !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !90, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !88
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !64
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !73
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !93 !taffo.funinfo !94 !taffo.sourceFunction !65 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.3(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !95 !taffo.funinfo !96 !taffo.sourceFunction !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !51, !taffo.initweight !97
  %0 = load float, float* %arrayidx, align 4, !taffo.info !98, !taffo.initweight !99
  %conv = sitofp i32 %factor to float, !taffo.info !100
  %mul = fmul float %0, %conv, !taffo.info !101, !taffo.initweight !103
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !51, !taffo.initweight !97
  store float %mul, float* %arrayidx1, align 4, !taffo.info !72, !taffo.initweight !99
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !104

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !95 !taffo.funinfo !105 !taffo.sourceFunction !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !49, !taffo.initweight !97
  %0 = load float, float* %arrayidx, align 4, !taffo.info !106, !taffo.initweight !99
  %conv = sitofp i32 %factor to float, !taffo.info !108
  %mul = fmul float %0, %conv, !taffo.info !109, !taffo.initweight !103
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !49, !taffo.initweight !97
  store float %mul, float* %arrayidx1, align 4, !taffo.info !68, !taffo.initweight !99
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !111

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gesummv.5(i32 noundef %n, float noundef %alpha, float noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %tmp, float* noundef %x, float* noundef %y) #0 !taffo.initweight !112 !taffo.funinfo !113 !taffo.sourceFunction !77 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !51, !taffo.initweight !97
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.info !114, !taffo.initweight !97, !taffo.constinfo !115
  %arrayidx1 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !54, !taffo.initweight !97
  store float 0.000000e+00, float* %arrayidx1, align 4, !taffo.info !114, !taffo.initweight !97, !taffo.constinfo !115
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !80
  %cmp3 = icmp slt i32 %j.0, %n, !taffo.info !88
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.info !49, !taffo.initweight !97
  %arrayidx6 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx5, i32 0, i32 %j.0, !taffo.info !49, !taffo.initweight !99
  %0 = load float, float* %arrayidx6, align 4, !taffo.info !106, !taffo.initweight !103
  %arrayidx7 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.info !49, !taffo.initweight !97
  %1 = load float, float* %arrayidx7, align 4, !taffo.info !106, !taffo.initweight !99
  %mul = fmul float %0, %1, !taffo.info !116, !taffo.initweight !103
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !51, !taffo.initweight !97
  %2 = load float, float* %arrayidx8, align 4, !taffo.info !51, !taffo.initweight !99
  %add = fadd float %mul, %2, !taffo.info !118, !taffo.initweight !103
  %arrayidx9 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !51, !taffo.initweight !97
  store float %add, float* %arrayidx9, align 4, !taffo.info !72, !taffo.initweight !99
  %arrayidx10 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !49, !taffo.initweight !97
  %arrayidx11 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !49, !taffo.initweight !99
  %3 = load float, float* %arrayidx11, align 4, !taffo.info !106, !taffo.initweight !103
  %arrayidx12 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.info !49, !taffo.initweight !97
  %4 = load float, float* %arrayidx12, align 4, !taffo.info !106, !taffo.initweight !99
  %mul13 = fmul float %3, %4, !taffo.info !120, !taffo.initweight !103
  %arrayidx14 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !54, !taffo.initweight !97
  %5 = load float, float* %arrayidx14, align 4, !taffo.info !54, !taffo.initweight !99
  %add15 = fadd float %mul13, %5, !taffo.info !121, !taffo.initweight !103
  %arrayidx16 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !54, !taffo.initweight !97
  store float %add15, float* %arrayidx16, align 4, !taffo.info !75, !taffo.initweight !99
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !123

for.end:                                          ; preds = %for.cond2
  %arrayidx17 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !51, !taffo.initweight !97
  %6 = load float, float* %arrayidx17, align 4, !taffo.info !51, !taffo.initweight !99
  %mul18 = fmul float %alpha, %6, !taffo.info !124, !taffo.initweight !97
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !54, !taffo.initweight !97
  %7 = load float, float* %arrayidx19, align 4, !taffo.info !54, !taffo.initweight !99
  %mul20 = fmul float %beta, %7, !taffo.info !127, !taffo.initweight !97
  %add21 = fadd float %mul18, %mul20, !taffo.info !129, !taffo.initweight !99
  %arrayidx22 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !54, !taffo.initweight !97
  store float %add21, float* %arrayidx22, align 4, !taffo.info !75, !taffo.initweight !99
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !131

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.6(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !95 !taffo.funinfo !132 !taffo.sourceFunction !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !54, !taffo.initweight !97
  %0 = load float, float* %arrayidx, align 4, !taffo.info !133, !taffo.initweight !99
  %conv = sitofp i32 %factor to float, !taffo.info !100
  %mul = fmul float %0, %conv, !taffo.info !134, !taffo.initweight !103
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !54, !taffo.initweight !97
  store float %mul, float* %arrayidx1, align 4, !taffo.info !75, !taffo.initweight !99
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !136

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.7(i32 noundef %n, float* noundef %alpha, float* noundef %beta, [16 x float]* noundef %A, [16 x float]* noundef %B, float* noundef %x, float* noundef %tmp, float* noundef %y) #0 !taffo.initweight !137 !taffo.funinfo !138 !taffo.sourceFunction !63 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !61, !taffo.initweight !139, !taffo.constinfo !140
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !66, !taffo.initweight !139, !taffo.constinfo !142
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !145, !taffo.initweight !46
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !146, !taffo.initweight !67
  br i1 %cmp, label %for.body, label %for.end26, !taffo.info !147, !taffo.initweight !69

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, %n, !taffo.info !149, !taffo.initweight !67
  %conv = sitofp i32 %rem to float, !taffo.info !151, !taffo.initweight !69
  %conv3 = sitofp i32 %n to float, !taffo.info !153
  %div = fdiv float %conv, %conv3, !taffo.info !154, !taffo.initweight !139
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !157, !taffo.initweight !67
  store float %div, float* %arrayidx, align 4, !taffo.info !114, !taffo.initweight !69
  %arrayidx4 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !158, !taffo.initweight !67
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !114, !taffo.initweight !69, !taffo.constinfo !115
  %arrayidx5 = getelementptr inbounds float, float* %tmp, i32 %i.0, !taffo.info !159, !taffo.initweight !67
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.info !114, !taffo.initweight !69, !taffo.constinfo !115
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !145, !taffo.initweight !46
  %cmp7 = icmp slt i32 %j.0, %n, !taffo.info !146, !taffo.initweight !67
  br i1 %cmp7, label %for.body9, label %for.end, !taffo.info !147, !taffo.initweight !69

for.body9:                                        ; preds = %for.cond6
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !160, !taffo.initweight !67
  %add = add nsw i32 %mul, 1, !taffo.info !162, !taffo.initweight !69, !taffo.constinfo !21
  %rem10 = srem i32 %add, %n, !taffo.info !149, !taffo.initweight !139
  %conv11 = sitofp i32 %rem10 to float, !taffo.info !151, !taffo.initweight !97
  %conv12 = sitofp i32 %n to float, !taffo.info !153
  %div13 = fdiv float %conv11, %conv12, !taffo.info !154, !taffo.initweight !99
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %A, i32 %i.0, !taffo.info !157, !taffo.initweight !67
  %arrayidx15 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !157, !taffo.initweight !67
  store float %div13, float* %arrayidx15, align 4, !taffo.info !114, !taffo.initweight !69
  %mul16 = mul nsw i32 %i.0, %j.0, !taffo.info !160, !taffo.initweight !67
  %add17 = add nsw i32 %mul16, 2, !taffo.info !164, !taffo.initweight !69, !taffo.constinfo !21
  %rem18 = srem i32 %add17, %n, !taffo.info !149, !taffo.initweight !139
  %conv19 = sitofp i32 %rem18 to float, !taffo.info !151, !taffo.initweight !97
  %conv20 = sitofp i32 %n to float, !taffo.info !153
  %div21 = fdiv float %conv19, %conv20, !taffo.info !154, !taffo.initweight !99
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !157, !taffo.initweight !67
  %arrayidx23 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx22, i32 0, i32 %j.0, !taffo.info !157, !taffo.initweight !67
  store float %div21, float* %arrayidx23, align 4, !taffo.info !114, !taffo.initweight !69
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !166, !taffo.initweight !67, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !167

for.end:                                          ; preds = %for.cond6
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !166, !taffo.initweight !67, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !168

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.8(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !169 !taffo.funinfo !170 !taffo.sourceFunction !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !80
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !88
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !49, !taffo.initweight !99
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !49, !taffo.initweight !103
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !106, !taffo.initweight !171
  %conv = sitofp i32 %factor to float, !taffo.info !108
  %mul = fmul float %1, %conv, !taffo.info !109, !taffo.initweight !172
  %2 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !49, !taffo.initweight !99
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !49, !taffo.initweight !103
  store float %mul, float* %arrayidx6, align 4, !taffo.info !68, !taffo.initweight !171
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !173

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !174

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x4046A6667F90D9D7}
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
!49 = !{!44, !50, i1 false, i2 -1}
!50 = !{double 0.000000e+00, double 1.875000e+00}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 27}
!53 = !{double 0.000000e+00, double 1.762500e+01}
!54 = !{!55, !1, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 26}
!56 = !{!"y"}
!57 = !{!44, i1 false, i1 false, i2 -1}
!58 = !{i32 1}
!59 = !{!52, i1 false, i1 false, i2 -1}
!60 = !{!55, i1 false, i1 false, i2 -1}
!61 = !{i1 false, !45, i1 false, i2 -1}
!62 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!63 = distinct !{null}
!64 = !{i1 false, i1 false, i1 false}
!65 = !{void (float*, i32)* @scale_scalar}
!66 = !{i1 false, !48, i1 false, i2 -1}
!67 = !{i32 2}
!68 = !{i1 false, !50, i1 false, i2 -1}
!69 = !{i32 3}
!70 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!71 = !{void (i32, i32, float*, i32)* @scale_2d}
!72 = !{i1 false, !53, i1 false, i2 -1}
!73 = !{i1 false, i1 false, i1 false, i1 false}
!74 = !{void (i32, float*, i32)* @scale_1d}
!75 = !{i1 false, !1, i1 false, i2 -1}
!76 = !{i1 false}
!77 = distinct !{null}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 1.700000e+01}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 0.000000e+00, double 1.000000e+00}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 1.000000e+00, double 1.700000e+01}
!84 = distinct !{!84, !23}
!85 = !{i32 1, !86, i32 1, !0}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 1.600000e+01, double 1.600000e+01}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.000000e+00, double 1.000000e+00}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0.000000e+00, double 0.000000e+00}
!92 = distinct !{!92, !23}
!93 = !{i32 1, i32 -1}
!94 = !{i32 1, !43, i32 1, !19}
!95 = !{i32 -1, i32 2, i32 -1}
!96 = !{i32 1, !86, i32 1, !51, i32 1, !19}
!97 = !{i32 5}
!98 = !{!55, !53, i1 false, i2 -1}
!99 = !{i32 6}
!100 = !{!44, !20, i1 false, i2 1}
!101 = !{!55, !102, i1 false, i2 -1}
!102 = !{double 0.000000e+00, double 3.525000e+01}
!103 = !{i32 7}
!104 = distinct !{!104, !23}
!105 = !{i32 1, !86, i32 1, !49, i32 1, !19}
!106 = !{!107, !50, i1 false, i2 -1}
!107 = !{!"fixp", i32 32, i32 29}
!108 = !{!107, !20, i1 false, i2 1}
!109 = !{!107, !110, i1 false, i2 -1}
!110 = !{double 0.000000e+00, double 3.750000e+00}
!111 = distinct !{!111, !23}
!112 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!113 = !{i32 1, !86, i32 1, !43, i32 1, !47, i32 1, !49, i32 1, !49, i32 1, !51, i32 1, !49, i32 1, !54}
!114 = !{i1 false, i1 false, i1 false, i2 1}
!115 = !{!90, i1 false}
!116 = !{!52, !117, i1 false, i2 -1}
!117 = !{double 0.000000e+00, double 0x400C200000000000}
!118 = !{!52, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x4035240000000000}
!120 = !{!107, !117, i1 false, i2 -1}
!121 = !{!55, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 0x404868667F90D9D7}
!123 = distinct !{!123, !23}
!124 = !{!125, !126, i1 false, i2 -1}
!125 = !{!"fixp", i32 32, i32 25}
!126 = !{double 0.000000e+00, double 2.643750e+01}
!127 = !{!125, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 0x404B2E149914389B}
!129 = !{!125, !130, i1 false, i2 -1}
!130 = !{double 0.000000e+00, double 0x4054330A4C8A1C4E}
!131 = distinct !{!131, !23}
!132 = !{i32 1, !86, i32 1, !54, i32 1, !19}
!133 = !{!125, !1, i1 false, i2 -1}
!134 = !{!125, !135, i1 false, i2 -1}
!135 = !{double 0.000000e+00, double 0x4056A6667F90D9D7}
!136 = distinct !{!136, !23}
!137 = !{i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!138 = !{i32 1, !86, i32 1, !43, i32 1, !47, i32 1, !49, i32 1, !49, i32 1, !49, i32 1, !51, i32 1, !54}
!139 = !{i32 4}
!140 = !{!141, i1 false}
!141 = !{i1 false, !45, i1 false, i2 0}
!142 = !{!143, i1 false}
!143 = !{i1 false, !144, i1 false, i2 0}
!144 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!145 = !{i1 false, !79, i1 false, i2 1}
!146 = !{i1 false, !81, i1 false, i2 1}
!147 = !{i1 false, !148, i1 false, i2 1}
!148 = !{double 0.000000e+00, double 1.600000e+01}
!149 = !{i1 false, !150, i1 false, i2 1}
!150 = !{double 0.000000e+00, double 1.500000e+01}
!151 = !{!152, !150, i1 false, i2 1}
!152 = !{!"fixp", i32 32, i32 28}
!153 = !{!52, !87, i1 false, i2 1}
!154 = !{!155, !156, i1 false, i2 1}
!155 = !{!"fixp", i32 32, i32 31}
!156 = !{double 0.000000e+00, double 9.375000e-01}
!157 = !{!44, !50, i1 false, i2 1}
!158 = !{!55, !1, i1 false, i2 1}
!159 = !{!52, !53, i1 false, i2 1}
!160 = !{i1 false, !161, i1 false, i2 1}
!161 = !{double 0.000000e+00, double 2.560000e+02}
!162 = !{i1 false, !163, i1 false, i2 1}
!163 = !{double 1.000000e+00, double 2.570000e+02}
!164 = !{i1 false, !165, i1 false, i2 1}
!165 = !{double 2.000000e+00, double 2.580000e+02}
!166 = !{i1 false, !83, i1 false, i2 1}
!167 = distinct !{!167, !23}
!168 = distinct !{!168, !23}
!169 = !{i32 -1, i32 -1, i32 3, i32 -1}
!170 = !{i32 1, !86, i32 1, !86, i32 1, !49, i32 1, !19}
!171 = !{i32 8}
!172 = !{i32 9}
!173 = distinct !{!173, !23}
!174 = distinct !{!174, !23}
