; ModuleID = './build/bin/fixed/3mm/24/3mm-standard-128-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %E = alloca [6 x [8 x float]], align 4, !taffo.info !41, !taffo.initweight !44
  %A = alloca [6 x [10 x float]], align 4, !taffo.info !45, !taffo.initweight !44
  %B = alloca [10 x [8 x float]], align 4, !taffo.info !48, !taffo.initweight !44
  %F = alloca [8 x [12 x float]], align 4, !taffo.info !50, !taffo.initweight !44
  %C = alloca [8 x [14 x float]], align 4, !taffo.info !53, !taffo.initweight !44
  %D = alloca [14 x [12 x float]], align 4, !taffo.info !55, !taffo.initweight !44
  %G = alloca [6 x [12 x float]], align 4, !taffo.info !57, !taffo.initweight !44, !taffo.target !59
  %E1 = bitcast [6 x [8 x float]]* %E to i8*, !taffo.info !60, !taffo.initweight !61
  %A2 = bitcast [6 x [10 x float]]* %A to i8*, !taffo.info !62, !taffo.initweight !61
  %B3 = bitcast [10 x [8 x float]]* %B to i8*, !taffo.info !62, !taffo.initweight !61
  %F4 = bitcast [8 x [12 x float]]* %F to i8*, !taffo.info !63, !taffo.initweight !61
  %C5 = bitcast [8 x [14 x float]]* %C to i8*, !taffo.info !62, !taffo.initweight !61
  %D6 = bitcast [14 x [12 x float]]* %D to i8*, !taffo.info !62, !taffo.initweight !61
  %G7 = bitcast [6 x [12 x float]]* %G to i8*, !taffo.info !64, !taffo.initweight !61, !taffo.target !59
  %arraydecay = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !45, !taffo.initweight !61
  %arraydecay8 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.info !48, !taffo.initweight !61
  %arraydecay9 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !53, !taffo.initweight !61
  %arraydecay10 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.info !55, !taffo.initweight !61
  %arraydecay11 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.info !41, !taffo.initweight !61
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.info !50, !taffo.initweight !61
  %arraydecay13 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !57, !taffo.initweight !61, !taffo.target !59
  call void @init_array.2(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [10 x float]* noundef %arraydecay, [8 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10, [8 x float]* noundef %arraydecay11, [12 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13), !taffo.info !65, !taffo.initweight !66, !taffo.constinfo !67, !taffo.originalCall !68
  %arraydecay14 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.info !41, !taffo.initweight !61
  %0 = bitcast [8 x float]* %arraydecay14 to float*, !taffo.info !41, !taffo.initweight !66
  call void @scale_2d.3(i32 noundef 6, i32 noundef 8, float* noundef %0, i32 noundef 128), !taffo.info !65, !taffo.initweight !69, !taffo.constinfo !70, !taffo.originalCall !71
  %arraydecay15 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !45, !taffo.initweight !61
  %1 = bitcast [10 x float]* %arraydecay15 to float*, !taffo.info !45, !taffo.initweight !66
  call void @scale_2d.4(i32 noundef 6, i32 noundef 10, float* noundef %1, i32 noundef 128), !taffo.info !72, !taffo.initweight !69, !taffo.constinfo !70, !taffo.originalCall !71
  %arraydecay16 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.info !48, !taffo.initweight !61
  %2 = bitcast [8 x float]* %arraydecay16 to float*, !taffo.info !48, !taffo.initweight !66
  call void @scale_2d.4(i32 noundef 10, i32 noundef 8, float* noundef %2, i32 noundef 128), !taffo.info !73, !taffo.initweight !69, !taffo.constinfo !70, !taffo.originalCall !71
  %arraydecay17 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.info !50, !taffo.initweight !61
  %3 = bitcast [12 x float]* %arraydecay17 to float*, !taffo.info !50, !taffo.initweight !66
  call void @scale_2d.6(i32 noundef 8, i32 noundef 12, float* noundef %3, i32 noundef 128), !taffo.info !74, !taffo.initweight !69, !taffo.constinfo !70, !taffo.originalCall !71
  %arraydecay18 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !53, !taffo.initweight !61
  %4 = bitcast [14 x float]* %arraydecay18 to float*, !taffo.info !53, !taffo.initweight !66
  call void @scale_2d.4(i32 noundef 8, i32 noundef 14, float* noundef %4, i32 noundef 128), !taffo.info !75, !taffo.initweight !69, !taffo.constinfo !70, !taffo.originalCall !71
  %arraydecay19 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.info !55, !taffo.initweight !61
  %5 = bitcast [12 x float]* %arraydecay19 to float*, !taffo.info !55, !taffo.initweight !66
  call void @scale_2d.4(i32 noundef 14, i32 noundef 12, float* noundef %5, i32 noundef 128), !taffo.info !76, !taffo.initweight !69, !taffo.constinfo !70, !taffo.originalCall !71
  %arraydecay20 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !57, !taffo.initweight !61, !taffo.target !59
  %6 = bitcast [12 x float]* %arraydecay20 to float*, !taffo.info !57, !taffo.initweight !66, !taffo.target !59
  call void @scale_2d.9(i32 noundef 6, i32 noundef 12, float* noundef %6, i32 noundef 128), !taffo.info !77, !taffo.initweight !69, !taffo.constinfo !70, !taffo.target !59, !taffo.originalCall !71
  call void @timer_start(), !taffo.constinfo !78
  %arraydecay21 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.info !41, !taffo.initweight !61
  %arraydecay22 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !45, !taffo.initweight !61
  %arraydecay23 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.info !48, !taffo.initweight !61
  %arraydecay24 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.info !50, !taffo.initweight !61
  %arraydecay25 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !53, !taffo.initweight !61
  %arraydecay26 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.info !55, !taffo.initweight !61
  %arraydecay27 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !57, !taffo.initweight !61, !taffo.target !59
  call void @kernel_3mm.1(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [8 x float]* noundef %arraydecay21, [10 x float]* noundef %arraydecay22, [8 x float]* noundef %arraydecay23, [12 x float]* noundef %arraydecay24, [14 x float]* noundef %arraydecay25, [12 x float]* noundef %arraydecay26, [12 x float]* noundef %arraydecay27), !taffo.info !65, !taffo.initweight !66, !taffo.constinfo !67, !taffo.originalCall !79
  call void @timer_stop(), !taffo.constinfo !78
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc35, %for.inc34 ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, 6, !taffo.info !82
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !84
  %cmp29 = icmp slt i32 %j.0, 12, !taffo.info !82
  br i1 %cmp29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %arrayidx = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 %i.0, !taffo.info !57, !taffo.initweight !61, !taffo.target !59
  %arrayidx31 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !57, !taffo.initweight !66, !taffo.target !59
  %7 = load float, float* %arrayidx31, align 4, !taffo.info !57, !taffo.initweight !69, !taffo.target !59
  %arrayidx32 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx32, i32 0, i32 %j.0, !taffo.info !0
  store float %7, float* %arrayidx33, align 4, !taffo.info !77, !taffo.initweight !86, !taffo.target !59
  br label %for.inc

for.inc:                                          ; preds = %for.body30
  %inc = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !89

for.end:                                          ; preds = %for.cond28
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %inc35 = add nsw i32 %i.0, 1, !taffo.info !90, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !92

for.end36:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 6, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0)), !taffo.constinfo !93
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !26 !taffo.funinfo !94 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !82
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !101
  %add = add nsw i32 %mul, %j.0, !taffo.info !101
  %rem = srem i32 %add, 20, !taffo.info !101, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !99
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !103
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !93
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !104

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !105

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.initweight !106 !taffo.funinfo !107 !taffo.sourceFunction !79 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !82
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.info !41, !taffo.initweight !112
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !113
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !114, !taffo.initweight !112, !taffo.constinfo !115
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !82
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !99
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !45, !taffo.initweight !112
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.info !45, !taffo.initweight !113
  %0 = load float, float* %arrayidx9, align 4, !taffo.info !45, !taffo.initweight !116
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %k.0, !taffo.info !48, !taffo.initweight !112
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !113
  %1 = load float, float* %arrayidx11, align 4, !taffo.info !48, !taffo.initweight !116
  %mul = fmul float %0, %1, !taffo.info !117, !taffo.initweight !120
  %arrayidx12 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.info !41, !taffo.initweight !112
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !113
  %2 = load float, float* %arrayidx13, align 4, !taffo.info !121, !taffo.initweight !116
  %add = fadd float %2, %mul, !taffo.info !122, !taffo.initweight !120
  store float %add, float* %arrayidx13, align 4, !taffo.info !65, !taffo.initweight !116
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !124

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !125

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !126

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ], !taffo.info !82
  %cmp21 = icmp slt i32 %i.1, %nj, !taffo.info !99
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ], !taffo.info !82
  %cmp24 = icmp slt i32 %j.1, %nl, !taffo.info !99
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.info !50, !taffo.initweight !112
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx26, i32 0, i32 %j.1, !taffo.info !50, !taffo.initweight !113
  store float 0.000000e+00, float* %arrayidx27, align 4, !taffo.info !114, !taffo.initweight !112, !taffo.constinfo !115
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ], !taffo.info !82
  %cmp29 = icmp slt i32 %k.1, %nm, !taffo.info !99
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.1, !taffo.info !53, !taffo.initweight !112
  %arrayidx32 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx31, i32 0, i32 %k.1, !taffo.info !53, !taffo.initweight !113
  %3 = load float, float* %arrayidx32, align 4, !taffo.info !53, !taffo.initweight !116
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %k.1, !taffo.info !55, !taffo.initweight !112
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.info !55, !taffo.initweight !113
  %4 = load float, float* %arrayidx34, align 4, !taffo.info !55, !taffo.initweight !116
  %mul35 = fmul float %3, %4, !taffo.info !127, !taffo.initweight !120
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.info !50, !taffo.initweight !112
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx36, i32 0, i32 %j.1, !taffo.info !50, !taffo.initweight !113
  %5 = load float, float* %arrayidx37, align 4, !taffo.info !50, !taffo.initweight !116
  %add38 = fadd float %5, %mul35, !taffo.info !129, !taffo.initweight !120
  store float %add38, float* %arrayidx37, align 4, !taffo.info !74, !taffo.initweight !116
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !131

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !132

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !133

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ], !taffo.info !82
  %cmp49 = icmp slt i32 %i.2, %ni, !taffo.info !99
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ], !taffo.info !82
  %cmp52 = icmp slt i32 %j.2, %nl, !taffo.info !99
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.info !57, !taffo.initweight !112
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54, i32 0, i32 %j.2, !taffo.info !57, !taffo.initweight !113
  store float 0.000000e+00, float* %arrayidx55, align 4, !taffo.info !114, !taffo.initweight !112, !taffo.constinfo !115
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ], !taffo.info !82
  %cmp57 = icmp slt i32 %k.2, %nj, !taffo.info !99
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.2, !taffo.info !41, !taffo.initweight !112
  %arrayidx60 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx59, i32 0, i32 %k.2, !taffo.info !41, !taffo.initweight !113
  %6 = load float, float* %arrayidx60, align 4, !taffo.info !41, !taffo.initweight !116
  %arrayidx61 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %k.2, !taffo.info !50, !taffo.initweight !112
  %arrayidx62 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx61, i32 0, i32 %j.2, !taffo.info !50, !taffo.initweight !113
  %7 = load float, float* %arrayidx62, align 4, !taffo.info !50, !taffo.initweight !116
  %mul63 = fmul float %6, %7, !taffo.info !134, !taffo.initweight !120
  %arrayidx64 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.info !57, !taffo.initweight !112
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64, i32 0, i32 %j.2, !taffo.info !57, !taffo.initweight !113
  %8 = load float, float* %arrayidx65, align 4, !taffo.info !137, !taffo.initweight !116
  %add66 = fadd float %8, %mul63, !taffo.info !139, !taffo.initweight !120
  store float %add66, float* %arrayidx65, align 4, !taffo.info !77, !taffo.initweight !116
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !141

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond51, !llvm.loop !142

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !143

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.initweight !106 !taffo.funinfo !144 !taffo.sourceFunction !68 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !145, !taffo.initweight !44
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp, label %for.body, label %for.end11, !taffo.info !148, !taffo.initweight !69

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !145, !taffo.initweight !44
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !148, !taffo.initweight !69

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !150, !taffo.initweight !66
  %add = add nsw i32 %mul, 1, !taffo.info !152, !taffo.initweight !69, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !154, !taffo.initweight !86
  %conv = sitofp i32 %rem to float, !taffo.info !156, !taffo.initweight !112
  %mul6 = mul nsw i32 5, %ni, !taffo.info !158, !taffo.constinfo !21
  %conv7 = sitofp i32 %mul6 to float, !taffo.info !160
  %div = fdiv float %conv, %conv7, !taffo.info !161, !taffo.initweight !113
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !163, !taffo.initweight !66
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !163, !taffo.initweight !66
  store float %div, float* %arrayidx8, align 4, !taffo.info !114, !taffo.initweight !69
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !166

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !167

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.info !145, !taffo.initweight !44
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.info !148, !taffo.initweight !69

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.info !145, !taffo.initweight !44
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.info !148, !taffo.initweight !69

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.info !168, !taffo.initweight !66
  %add22 = add nsw i32 %mul21, 2, !taffo.info !170, !taffo.initweight !69, !taffo.constinfo !21
  %rem23 = srem i32 %add22, %nj, !taffo.info !172, !taffo.initweight !86
  %conv24 = sitofp i32 %rem23 to float, !taffo.info !173, !taffo.initweight !112
  %mul25 = mul nsw i32 5, %nj, !taffo.info !174, !taffo.constinfo !21
  %conv26 = sitofp i32 %mul25 to float, !taffo.info !176
  %div27 = fdiv float %conv24, %conv26, !taffo.info !178, !taffo.initweight !113
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %i.1, !taffo.info !180, !taffo.initweight !66
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx28, i32 0, i32 %j.1, !taffo.info !180, !taffo.initweight !66
  store float %div27, float* %arrayidx29, align 4, !taffo.info !114, !taffo.initweight !69
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !181

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !182

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.info !145, !taffo.initweight !44
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.info !148, !taffo.initweight !69

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.info !145, !taffo.initweight !44
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.info !148, !taffo.initweight !69

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.info !183, !taffo.initweight !66, !taffo.constinfo !21
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.info !185, !taffo.initweight !66
  %rem46 = srem i32 %mul45, %nl, !taffo.info !187, !taffo.initweight !69
  %conv47 = sitofp i32 %rem46 to float, !taffo.info !189, !taffo.initweight !86
  %mul48 = mul nsw i32 5, %nl, !taffo.info !191, !taffo.constinfo !21
  %conv49 = sitofp i32 %mul48 to float, !taffo.info !193
  %div50 = fdiv float %conv47, %conv49, !taffo.info !194, !taffo.initweight !112
  %arrayidx51 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.info !197, !taffo.initweight !66
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx51, i32 0, i32 %j.2, !taffo.info !197, !taffo.initweight !66
  store float %div50, float* %arrayidx52, align 4, !taffo.info !114, !taffo.initweight !69
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !198

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond36, !llvm.loop !199

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.info !145, !taffo.initweight !44
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.info !148, !taffo.initweight !69

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.info !145, !taffo.initweight !44
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.info !148, !taffo.initweight !69

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.info !200, !taffo.initweight !66, !taffo.constinfo !21
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.info !202, !taffo.initweight !66
  %add69 = add nsw i32 %mul68, 2, !taffo.info !204, !taffo.initweight !69, !taffo.constinfo !21
  %rem70 = srem i32 %add69, %nk, !taffo.info !206, !taffo.initweight !86
  %conv71 = sitofp i32 %rem70 to float, !taffo.info !208, !taffo.initweight !112
  %mul72 = mul nsw i32 5, %nk, !taffo.info !209, !taffo.constinfo !21
  %conv73 = sitofp i32 %mul72 to float, !taffo.info !211
  %div74 = fdiv float %conv71, %conv73, !taffo.info !212, !taffo.initweight !113
  %arrayidx75 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %i.3, !taffo.info !214, !taffo.initweight !66
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx75, i32 0, i32 %j.3, !taffo.info !214, !taffo.initweight !66
  store float %div74, float* %arrayidx76, align 4, !taffo.info !114, !taffo.initweight !69
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond63, !llvm.loop !215

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond59, !llvm.loop !216

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.info !145, !taffo.initweight !44
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.info !148, !taffo.initweight !69

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.info !145, !taffo.initweight !44
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.info !148, !taffo.initweight !69

for.body90:                                       ; preds = %for.cond87
  %arrayidx91 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.4, !taffo.info !217, !taffo.initweight !66
  %arrayidx92 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx91, i32 0, i32 %j.4, !taffo.info !217, !taffo.initweight !66
  store float 0.000000e+00, float* %arrayidx92, align 4, !taffo.info !114, !taffo.initweight !69, !taffo.constinfo !115
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond87, !llvm.loop !218

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond83, !llvm.loop !219

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.info !145, !taffo.initweight !44
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.info !148, !taffo.initweight !69

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.info !145, !taffo.initweight !44
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.info !148, !taffo.initweight !69

for.body106:                                      ; preds = %for.cond103
  %arrayidx107 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.5, !taffo.info !220, !taffo.initweight !66
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx107, i32 0, i32 %j.5, !taffo.info !220, !taffo.initweight !66
  store float 0.000000e+00, float* %arrayidx108, align 4, !taffo.info !114, !taffo.initweight !69, !taffo.constinfo !115
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond103, !llvm.loop !221

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond99, !llvm.loop !222

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.info !145, !taffo.initweight !44
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.info !148, !taffo.initweight !69

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.info !145, !taffo.initweight !44
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.info !147, !taffo.initweight !66
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.info !148, !taffo.initweight !69

for.body122:                                      ; preds = %for.cond119
  %arrayidx123 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.6, !taffo.info !223, !taffo.initweight !66
  %arrayidx124 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123, i32 0, i32 %j.6, !taffo.info !223, !taffo.initweight !66
  store float 0.000000e+00, float* %arrayidx124, align 4, !taffo.info !114, !taffo.initweight !69, !taffo.constinfo !115
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond119, !llvm.loop !224

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.info !164, !taffo.initweight !66, !taffo.constinfo !21
  br label %for.cond115, !llvm.loop !225

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !226 !taffo.funinfo !227 !taffo.sourceFunction !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !82
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !41, !taffo.initweight !113
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !41, !taffo.initweight !116
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !41, !taffo.initweight !120
  %conv = sitofp i32 %factor to float, !taffo.info !230
  %mul = fmul float %1, %conv, !taffo.info !232, !taffo.initweight !235
  %2 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !41, !taffo.initweight !113
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !41, !taffo.initweight !116
  store float %mul, float* %arrayidx6, align 4, !taffo.info !65, !taffo.initweight !120
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !236

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !237

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !226 !taffo.funinfo !238 !taffo.sourceFunction !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !82
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !45, !taffo.initweight !113
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !45, !taffo.initweight !116
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !45, !taffo.initweight !120
  %conv = sitofp i32 %factor to float, !taffo.info !230
  %mul = fmul float %1, %conv, !taffo.info !239, !taffo.initweight !235
  %2 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !45, !taffo.initweight !113
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !45, !taffo.initweight !116
  store float %mul, float* %arrayidx6, align 4, !taffo.info !72, !taffo.initweight !120
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !241

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !242

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !226 !taffo.funinfo !243 !taffo.sourceFunction !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !82
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !50, !taffo.initweight !113
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !50, !taffo.initweight !116
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !50, !taffo.initweight !120
  %conv = sitofp i32 %factor to float, !taffo.info !230
  %mul = fmul float %1, %conv, !taffo.info !244, !taffo.initweight !235
  %2 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !50, !taffo.initweight !113
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !50, !taffo.initweight !116
  store float %mul, float* %arrayidx6, align 4, !taffo.info !74, !taffo.initweight !120
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !247

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !248

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !226 !taffo.funinfo !249 !taffo.sourceFunction !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !82
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !99
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !82
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !57, !taffo.initweight !113
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !57, !taffo.initweight !116
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !57, !taffo.initweight !120
  %conv = sitofp i32 %factor to float, !taffo.info !230
  %mul = fmul float %1, %conv, !taffo.info !250, !taffo.initweight !235
  %2 = mul nsw i32 %i.0, %m, !taffo.info !101
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !57, !taffo.initweight !113
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !57, !taffo.initweight !116
  store float %mul, float* %arrayidx6, align 4, !taffo.info !77, !taffo.initweight !120
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !253

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !99, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !254

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x416BCB0680000000}
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
!26 = !{i32 -1, i32 -1, i32 -1}
!27 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!28 = distinct !{!28, !23}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = !{void (i32, i32, float*, i32)* @scale_2d.3, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.9}
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
!43 = !{double 0.000000e+00, double 0x409BBBBBE0157EED}
!44 = !{i32 0}
!45 = !{!46, !47, i1 false, i2 -1}
!46 = !{!"fixp", i32 32, i32 27}
!47 = !{double 0.000000e+00, double 0x403555556084A516}
!48 = !{!46, !49, i1 false, i2 -1}
!49 = !{double 0.000000e+00, double 2.240000e+01}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 32, i32 20}
!52 = !{double 0.000000e+00, double 0x40A0624DE00D1B71}
!53 = !{!46, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 0x403777777D0F1F58}
!55 = !{!46, !56, i1 false, i2 -1}
!56 = !{double 0.000000e+00, double 0x40370A3D816ACEAB}
!57 = !{!58, !1, i1 false, i2 -1}
!58 = !{!"fixp", i32 32, i32 8}
!59 = !{!"G"}
!60 = !{!42, i1 false, i1 false, i2 -1}
!61 = !{i32 1}
!62 = !{!46, i1 false, i1 false, i2 -1}
!63 = !{!51, i1 false, i1 false, i2 -1}
!64 = !{!58, i1 false, i1 false, i2 -1}
!65 = !{i1 false, !43, i1 false, i2 -1}
!66 = !{i32 2}
!67 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!68 = distinct !{null}
!69 = !{i32 3}
!70 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!71 = !{void (i32, i32, float*, i32)* @scale_2d}
!72 = !{i1 false, !47, i1 false, i2 -1}
!73 = !{i1 false, !49, i1 false, i2 -1}
!74 = !{i1 false, !52, i1 false, i2 -1}
!75 = !{i1 false, !54, i1 false, i2 -1}
!76 = !{i1 false, !56, i1 false, i2 -1}
!77 = !{i1 false, !1, i1 false, i2 -1}
!78 = !{i1 false}
!79 = distinct !{null}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 0.000000e+00, double 7.000000e+00}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 0.000000e+00, double 1.000000e+00}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 0.000000e+00, double 9.100000e+01}
!86 = !{i32 4}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 1.000000e+00, double 9.100000e+01}
!89 = distinct !{!89, !23}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 1.000000e+00, double 7.000000e+00}
!92 = distinct !{!92, !23}
!93 = !{i1 false, i1 false, i1 false, i1 false}
!94 = !{i32 1, !95, i32 1, !97, i32 1, !0}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 6.000000e+00, double 6.000000e+00}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.200000e+01, double 1.200000e+01}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 1.000000e+00, double 1.000000e+00}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 0.000000e+00, double 0.000000e+00}
!103 = !{i1 false, i1 false, i1 false}
!104 = distinct !{!104, !23}
!105 = distinct !{!105, !23}
!106 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!107 = !{i32 1, !95, i32 1, !108, i32 1, !16, i32 1, !97, i32 1, !110, i32 1, !41, i32 1, !45, i32 1, !48, i32 1, !50, i32 1, !53, i32 1, !55, i32 1, !57}
!108 = !{i1 false, !109, i1 false, i2 0}
!109 = !{double 8.000000e+00, double 8.000000e+00}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 1.400000e+01, double 1.400000e+01}
!112 = !{i32 5}
!113 = !{i32 6}
!114 = !{i1 false, i1 false, i1 false, i2 1}
!115 = !{!101, i1 false}
!116 = !{i32 7}
!117 = !{!118, !119, i1 false, i2 -1}
!118 = !{!"fixp", i32 32, i32 23}
!119 = !{double 0.000000e+00, double 0x407DDDDDED8680B8}
!120 = !{i32 8}
!121 = !{!51, !43, i1 false, i2 -1}
!122 = !{!51, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 0x40A19999ADBB8F8E}
!124 = distinct !{!124, !23}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
!127 = !{!51, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 0x4080E56051DDA6A0}
!129 = !{!51, !130, i1 false, i2 -1}
!130 = !{double 0.000000e+00, double 0x40A49BA5F4848519}
!131 = distinct !{!131, !23}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
!134 = !{!135, !136, i1 false, i2 -1}
!135 = !{!"fixp", i32 32, i32 10}
!136 = !{double 0.000000e+00, double 0x414C6620BAA52758}
!137 = !{!138, !1, i1 false, i2 -1}
!138 = !{!"fixp", i32 32, i32 7}
!139 = !{!138, !140, i1 false, i2 -1}
!140 = !{double 0.000000e+00, double 0x417172475754A4EB}
!141 = distinct !{!141, !23}
!142 = distinct !{!142, !23}
!143 = distinct !{!143, !23}
!144 = !{i32 1, !95, i32 1, !108, i32 1, !16, i32 1, !97, i32 1, !110, i32 1, !45, i32 1, !48, i32 1, !53, i32 1, !55, i32 1, !41, i32 1, !50, i32 1, !57}
!145 = !{i1 false, !146, i1 false, i2 1}
!146 = !{double 0.000000e+00, double 1.500000e+01}
!147 = !{i1 false, !83, i1 false, i2 1}
!148 = !{i1 false, !149, i1 false, i2 1}
!149 = !{double 0.000000e+00, double 1.400000e+01}
!150 = !{i1 false, !151, i1 false, i2 1}
!151 = !{double 0.000000e+00, double 1.960000e+02}
!152 = !{i1 false, !153, i1 false, i2 1}
!153 = !{double 1.000000e+00, double 1.970000e+02}
!154 = !{i1 false, !155, i1 false, i2 1}
!155 = !{double 0.000000e+00, double 5.000000e+00}
!156 = !{!157, !155, i1 false, i2 1}
!157 = !{!"fixp", i32 32, i32 29}
!158 = !{i1 false, !159, i1 false, i2 0}
!159 = !{double 3.000000e+01, double 3.000000e+01}
!160 = !{!46, !159, i1 false, i2 1}
!161 = !{!157, !162, i1 false, i2 1}
!162 = !{double 0.000000e+00, double 0x3FC5555555555555}
!163 = !{!46, !47, i1 false, i2 1}
!164 = !{i1 false, !165, i1 false, i2 1}
!165 = !{double 1.000000e+00, double 1.500000e+01}
!166 = distinct !{!166, !23}
!167 = distinct !{!167, !23}
!168 = !{i1 false, !169, i1 false, i2 1}
!169 = !{double 0.000000e+00, double 2.100000e+02}
!170 = !{i1 false, !171, i1 false, i2 1}
!171 = !{double 2.000000e+00, double 2.120000e+02}
!172 = !{i1 false, !81, i1 false, i2 1}
!173 = !{!157, !81, i1 false, i2 1}
!174 = !{i1 false, !175, i1 false, i2 0}
!175 = !{double 4.000000e+01, double 4.000000e+01}
!176 = !{!177, !175, i1 false, i2 1}
!177 = !{!"fixp", i32 32, i32 26}
!178 = !{!157, !179, i1 false, i2 1}
!179 = !{double 0.000000e+00, double 1.750000e-01}
!180 = !{!46, !49, i1 false, i2 1}
!181 = distinct !{!181, !23}
!182 = distinct !{!182, !23}
!183 = !{i1 false, !184, i1 false, i2 1}
!184 = !{double 3.000000e+00, double 1.700000e+01}
!185 = !{i1 false, !186, i1 false, i2 1}
!186 = !{double 0.000000e+00, double 2.380000e+02}
!187 = !{i1 false, !188, i1 false, i2 1}
!188 = !{double 0.000000e+00, double 1.100000e+01}
!189 = !{!190, !188, i1 false, i2 1}
!190 = !{!"fixp", i32 32, i32 28}
!191 = !{i1 false, !192, i1 false, i2 0}
!192 = !{double 6.000000e+01, double 6.000000e+01}
!193 = !{!177, !192, i1 false, i2 1}
!194 = !{!195, !196, i1 false, i2 1}
!195 = !{!"fixp", i32 32, i32 31}
!196 = !{double 0.000000e+00, double 0x3FC7777777777777}
!197 = !{!46, !54, i1 false, i2 1}
!198 = distinct !{!198, !23}
!199 = distinct !{!199, !23}
!200 = !{i1 false, !201, i1 false, i2 1}
!201 = !{double 2.000000e+00, double 1.600000e+01}
!202 = !{i1 false, !203, i1 false, i2 1}
!203 = !{double 0.000000e+00, double 2.240000e+02}
!204 = !{i1 false, !205, i1 false, i2 1}
!205 = !{double 2.000000e+00, double 2.260000e+02}
!206 = !{i1 false, !207, i1 false, i2 1}
!207 = !{double 0.000000e+00, double 9.000000e+00}
!208 = !{!190, !207, i1 false, i2 1}
!209 = !{i1 false, !210, i1 false, i2 0}
!210 = !{double 5.000000e+01, double 5.000000e+01}
!211 = !{!177, !210, i1 false, i2 1}
!212 = !{!195, !213, i1 false, i2 1}
!213 = !{double 0.000000e+00, double 1.800000e-01}
!214 = !{!46, !56, i1 false, i2 1}
!215 = distinct !{!215, !23}
!216 = distinct !{!216, !23}
!217 = !{!42, !43, i1 false, i2 1}
!218 = distinct !{!218, !23}
!219 = distinct !{!219, !23}
!220 = !{!51, !52, i1 false, i2 1}
!221 = distinct !{!221, !23}
!222 = distinct !{!222, !23}
!223 = !{!58, !1, i1 false, i2 1}
!224 = distinct !{!224, !23}
!225 = distinct !{!225, !23}
!226 = !{i32 -1, i32 -1, i32 3, i32 -1}
!227 = !{i32 1, !95, i32 1, !108, i32 1, !41, i32 1, !228}
!228 = !{i1 false, !229, i1 false, i2 0}
!229 = !{double 1.280000e+02, double 1.280000e+02}
!230 = !{!231, !229, i1 false, i2 1}
!231 = !{!"fixp", i32 32, i32 24}
!232 = !{!233, !234, i1 false, i2 -1}
!233 = !{!"fixp", i32 32, i32 14}
!234 = !{double 0.000000e+00, double 0x410BBBBBE0157EED}
!235 = !{i32 9}
!236 = distinct !{!236, !23}
!237 = distinct !{!237, !23}
!238 = !{i32 1, !95, i32 1, !16, i32 1, !45, i32 1, !228}
!239 = !{!51, !240, i1 false, i2 -1}
!240 = !{double 0.000000e+00, double 0x40A555556084A516}
!241 = distinct !{!241, !23}
!242 = distinct !{!242, !23}
!243 = !{i32 1, !108, i32 1, !97, i32 1, !50, i32 1, !228}
!244 = !{!245, !246, i1 false, i2 -1}
!245 = !{!"fixp", i32 32, i32 13}
!246 = !{double 0.000000e+00, double 0x4110624DE00D1B71}
!247 = distinct !{!247, !23}
!248 = distinct !{!248, !23}
!249 = !{i32 1, !95, i32 1, !97, i32 1, !57, i32 1, !228}
!250 = !{!251, !252, i1 false, i2 -1}
!251 = !{!"float", i32 1, double 0x41DBCB0680000000}
!252 = !{double 0.000000e+00, double 0x41DBCB0680000000}
!253 = distinct !{!253, !23}
!254 = distinct !{!254, !23}
