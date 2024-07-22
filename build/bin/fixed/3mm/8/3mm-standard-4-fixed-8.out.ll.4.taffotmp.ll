; ModuleID = './build/bin/fixed/3mm/8/3mm-standard-4-fixed-8.out.ll.3.taffotmp.ll'
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
  %C = alloca [8 x [14 x float]], align 4, !taffo.info !52, !taffo.initweight !44
  %D = alloca [14 x [12 x float]], align 4, !taffo.info !54, !taffo.initweight !44
  %G = alloca [6 x [12 x float]], align 4, !taffo.info !56, !taffo.initweight !44, !taffo.target !58
  %E1 = bitcast [6 x [8 x float]]* %E to i8*, !taffo.info !59, !taffo.initweight !60
  %A2 = bitcast [6 x [10 x float]]* %A to i8*, !taffo.info !61, !taffo.initweight !60
  %B3 = bitcast [10 x [8 x float]]* %B to i8*, !taffo.info !61, !taffo.initweight !60
  %F4 = bitcast [8 x [12 x float]]* %F to i8*, !taffo.info !59, !taffo.initweight !60
  %C5 = bitcast [8 x [14 x float]]* %C to i8*, !taffo.info !61, !taffo.initweight !60
  %D6 = bitcast [14 x [12 x float]]* %D to i8*, !taffo.info !61, !taffo.initweight !60
  %G7 = bitcast [6 x [12 x float]]* %G to i8*, !taffo.info !62, !taffo.initweight !60, !taffo.target !58
  %arraydecay = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !45, !taffo.initweight !60
  %arraydecay8 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.info !48, !taffo.initweight !60
  %arraydecay9 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !52, !taffo.initweight !60
  %arraydecay10 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.info !54, !taffo.initweight !60
  %arraydecay11 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.info !41, !taffo.initweight !60
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.info !50, !taffo.initweight !60
  %arraydecay13 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !56, !taffo.initweight !60, !taffo.target !58
  call void @init_array.2(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [10 x float]* noundef %arraydecay, [8 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [12 x float]* noundef %arraydecay10, [8 x float]* noundef %arraydecay11, [12 x float]* noundef %arraydecay12, [12 x float]* noundef %arraydecay13), !taffo.info !63, !taffo.initweight !64, !taffo.constinfo !65, !taffo.originalCall !66
  %arraydecay14 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.info !41, !taffo.initweight !60
  %0 = bitcast [8 x float]* %arraydecay14 to float*, !taffo.info !41, !taffo.initweight !64
  call void @scale_2d.3(i32 noundef 6, i32 noundef 8, float* noundef %0, i32 noundef 4), !taffo.info !63, !taffo.initweight !67, !taffo.constinfo !68, !taffo.originalCall !69
  %arraydecay15 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !45, !taffo.initweight !60
  %1 = bitcast [10 x float]* %arraydecay15 to float*, !taffo.info !45, !taffo.initweight !64
  call void @scale_2d.4(i32 noundef 6, i32 noundef 10, float* noundef %1, i32 noundef 4), !taffo.info !70, !taffo.initweight !67, !taffo.constinfo !68, !taffo.originalCall !69
  %arraydecay16 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.info !48, !taffo.initweight !60
  %2 = bitcast [8 x float]* %arraydecay16 to float*, !taffo.info !48, !taffo.initweight !64
  call void @scale_2d.4(i32 noundef 10, i32 noundef 8, float* noundef %2, i32 noundef 4), !taffo.info !71, !taffo.initweight !67, !taffo.constinfo !68, !taffo.originalCall !69
  %arraydecay17 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.info !50, !taffo.initweight !60
  %3 = bitcast [12 x float]* %arraydecay17 to float*, !taffo.info !50, !taffo.initweight !64
  call void @scale_2d.3(i32 noundef 8, i32 noundef 12, float* noundef %3, i32 noundef 4), !taffo.info !72, !taffo.initweight !67, !taffo.constinfo !68, !taffo.originalCall !69
  %arraydecay18 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !52, !taffo.initweight !60
  %4 = bitcast [14 x float]* %arraydecay18 to float*, !taffo.info !52, !taffo.initweight !64
  call void @scale_2d.4(i32 noundef 8, i32 noundef 14, float* noundef %4, i32 noundef 4), !taffo.info !73, !taffo.initweight !67, !taffo.constinfo !68, !taffo.originalCall !69
  %arraydecay19 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.info !54, !taffo.initweight !60
  %5 = bitcast [12 x float]* %arraydecay19 to float*, !taffo.info !54, !taffo.initweight !64
  call void @scale_2d.4(i32 noundef 14, i32 noundef 12, float* noundef %5, i32 noundef 4), !taffo.info !74, !taffo.initweight !67, !taffo.constinfo !68, !taffo.originalCall !69
  %arraydecay20 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !56, !taffo.initweight !60, !taffo.target !58
  %6 = bitcast [12 x float]* %arraydecay20 to float*, !taffo.info !56, !taffo.initweight !64, !taffo.target !58
  call void @scale_2d.9(i32 noundef 6, i32 noundef 12, float* noundef %6, i32 noundef 4), !taffo.info !75, !taffo.initweight !67, !taffo.constinfo !68, !taffo.target !58, !taffo.originalCall !69
  call void @timer_start(), !taffo.constinfo !76
  %arraydecay21 = getelementptr inbounds [6 x [8 x float]], [6 x [8 x float]]* %E, i32 0, i32 0, !taffo.info !41, !taffo.initweight !60
  %arraydecay22 = getelementptr inbounds [6 x [10 x float]], [6 x [10 x float]]* %A, i32 0, i32 0, !taffo.info !45, !taffo.initweight !60
  %arraydecay23 = getelementptr inbounds [10 x [8 x float]], [10 x [8 x float]]* %B, i32 0, i32 0, !taffo.info !48, !taffo.initweight !60
  %arraydecay24 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %F, i32 0, i32 0, !taffo.info !50, !taffo.initweight !60
  %arraydecay25 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !52, !taffo.initweight !60
  %arraydecay26 = getelementptr inbounds [14 x [12 x float]], [14 x [12 x float]]* %D, i32 0, i32 0, !taffo.info !54, !taffo.initweight !60
  %arraydecay27 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 0, !taffo.info !56, !taffo.initweight !60, !taffo.target !58
  call void @kernel_3mm.1(i32 noundef 6, i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, [8 x float]* noundef %arraydecay21, [10 x float]* noundef %arraydecay22, [8 x float]* noundef %arraydecay23, [12 x float]* noundef %arraydecay24, [14 x float]* noundef %arraydecay25, [12 x float]* noundef %arraydecay26, [12 x float]* noundef %arraydecay27), !taffo.info !63, !taffo.initweight !64, !taffo.constinfo !65, !taffo.originalCall !77
  call void @timer_stop(), !taffo.constinfo !76
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc35, %for.inc34 ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, 6, !taffo.info !80
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !82
  %cmp29 = icmp slt i32 %j.0, 12, !taffo.info !80
  br i1 %cmp29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %arrayidx = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* %G, i32 0, i32 %i.0, !taffo.info !56, !taffo.initweight !60, !taffo.target !58
  %arrayidx31 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !56, !taffo.initweight !64, !taffo.target !58
  %7 = load float, float* %arrayidx31, align 4, !taffo.info !56, !taffo.initweight !67, !taffo.target !58
  %arrayidx32 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx32, i32 0, i32 %j.0, !taffo.info !0
  store float %7, float* %arrayidx33, align 4, !taffo.info !75, !taffo.initweight !84, !taffo.target !58
  br label %for.inc

for.inc:                                          ; preds = %for.body30
  %inc = add nsw i32 %j.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !87

for.end:                                          ; preds = %for.cond28
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %inc35 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !90

for.end36:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 6, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0)), !taffo.constinfo !91
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !26 !taffo.funinfo !92 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !80
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !97
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !99
  %add = add nsw i32 %mul, %j.0, !taffo.info !99
  %rem = srem i32 %add, 20, !taffo.info !99, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !97
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !101
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !91
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !102

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !103

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x float]* noundef %E, [10 x float]* noundef %A, [8 x float]* noundef %B, [12 x float]* noundef %F, [14 x float]* noundef %C, [12 x float]* noundef %D, [12 x float]* noundef %G) #0 !taffo.initweight !104 !taffo.funinfo !105 !taffo.sourceFunction !77 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !80
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !97
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.info !41, !taffo.initweight !110
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !111
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !112, !taffo.initweight !110, !taffo.constinfo !113
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !80
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !97
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !45, !taffo.initweight !110
  %arrayidx9 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.info !45, !taffo.initweight !111
  %0 = load float, float* %arrayidx9, align 4, !taffo.info !45, !taffo.initweight !114
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %k.0, !taffo.info !48, !taffo.initweight !110
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !111
  %1 = load float, float* %arrayidx11, align 4, !taffo.info !48, !taffo.initweight !114
  %mul = fmul float %0, %1, !taffo.info !115, !taffo.initweight !117
  %arrayidx12 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.0, !taffo.info !41, !taffo.initweight !110
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx12, i32 0, i32 %j.0, !taffo.info !41, !taffo.initweight !111
  %2 = load float, float* %arrayidx13, align 4, !taffo.info !41, !taffo.initweight !114
  %add = fadd float %2, %mul, !taffo.info !118, !taffo.initweight !117
  store float %add, float* %arrayidx13, align 4, !taffo.info !63, !taffo.initweight !114
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !120

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !121

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !122

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ], !taffo.info !80
  %cmp21 = icmp slt i32 %i.1, %nj, !taffo.info !97
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ], !taffo.info !80
  %cmp24 = icmp slt i32 %j.1, %nl, !taffo.info !97
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.info !50, !taffo.initweight !110
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx26, i32 0, i32 %j.1, !taffo.info !50, !taffo.initweight !111
  store float 0.000000e+00, float* %arrayidx27, align 4, !taffo.info !112, !taffo.initweight !110, !taffo.constinfo !113
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ], !taffo.info !80
  %cmp29 = icmp slt i32 %k.1, %nm, !taffo.info !97
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.1, !taffo.info !52, !taffo.initweight !110
  %arrayidx32 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx31, i32 0, i32 %k.1, !taffo.info !52, !taffo.initweight !111
  %3 = load float, float* %arrayidx32, align 4, !taffo.info !52, !taffo.initweight !114
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %k.1, !taffo.info !54, !taffo.initweight !110
  %arrayidx34 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx33, i32 0, i32 %j.1, !taffo.info !54, !taffo.initweight !111
  %4 = load float, float* %arrayidx34, align 4, !taffo.info !54, !taffo.initweight !114
  %mul35 = fmul float %3, %4, !taffo.info !123, !taffo.initweight !117
  %arrayidx36 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.1, !taffo.info !50, !taffo.initweight !110
  %arrayidx37 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx36, i32 0, i32 %j.1, !taffo.info !50, !taffo.initweight !111
  %5 = load float, float* %arrayidx37, align 4, !taffo.info !50, !taffo.initweight !114
  %add38 = fadd float %5, %mul35, !taffo.info !125, !taffo.initweight !117
  store float %add38, float* %arrayidx37, align 4, !taffo.info !72, !taffo.initweight !114
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !127

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !128

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !129

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ], !taffo.info !80
  %cmp49 = icmp slt i32 %i.2, %ni, !taffo.info !97
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ], !taffo.info !80
  %cmp52 = icmp slt i32 %j.2, %nl, !taffo.info !97
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.info !56, !taffo.initweight !110
  %arrayidx55 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx54, i32 0, i32 %j.2, !taffo.info !56, !taffo.initweight !111
  store float 0.000000e+00, float* %arrayidx55, align 4, !taffo.info !112, !taffo.initweight !110, !taffo.constinfo !113
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ], !taffo.info !80
  %cmp57 = icmp slt i32 %k.2, %nj, !taffo.info !97
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.2, !taffo.info !41, !taffo.initweight !110
  %arrayidx60 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx59, i32 0, i32 %k.2, !taffo.info !41, !taffo.initweight !111
  %6 = load float, float* %arrayidx60, align 4, !taffo.info !130, !taffo.initweight !114
  %arrayidx61 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %k.2, !taffo.info !50, !taffo.initweight !110
  %arrayidx62 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx61, i32 0, i32 %j.2, !taffo.info !50, !taffo.initweight !111
  %7 = load float, float* %arrayidx62, align 4, !taffo.info !132, !taffo.initweight !114
  %mul63 = fmul float %6, %7, !taffo.info !133, !taffo.initweight !117
  %arrayidx64 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.2, !taffo.info !56, !taffo.initweight !110
  %arrayidx65 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx64, i32 0, i32 %j.2, !taffo.info !56, !taffo.initweight !111
  %8 = load float, float* %arrayidx65, align 4, !taffo.info !136, !taffo.initweight !114
  %add66 = fadd float %8, %mul63, !taffo.info !137, !taffo.initweight !117
  store float %add66, float* %arrayidx65, align 4, !taffo.info !75, !taffo.initweight !114
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !139

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond51, !llvm.loop !140

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !141

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x float]* noundef %A, [8 x float]* noundef %B, [14 x float]* noundef %C, [12 x float]* noundef %D, [8 x float]* noundef %E, [12 x float]* noundef %F, [12 x float]* noundef %G) #0 !taffo.initweight !104 !taffo.funinfo !142 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !143, !taffo.initweight !44
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp, label %for.body, label %for.end11, !taffo.info !146, !taffo.initweight !67

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !143, !taffo.initweight !44
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !146, !taffo.initweight !67

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !148, !taffo.initweight !64
  %add = add nsw i32 %mul, 1, !taffo.info !150, !taffo.initweight !67, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !152, !taffo.initweight !84
  %conv = sitofp i32 %rem to float, !taffo.info !154, !taffo.initweight !110
  %mul6 = mul nsw i32 5, %ni, !taffo.info !155, !taffo.constinfo !21
  %conv7 = sitofp i32 %mul6 to float, !taffo.info !157
  %div = fdiv float %conv, %conv7, !taffo.info !158, !taffo.initweight !111
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %A, i32 %i.0, !taffo.info !160, !taffo.initweight !64
  %arrayidx8 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !160, !taffo.initweight !64
  store float %div, float* %arrayidx8, align 4, !taffo.info !112, !taffo.initweight !67
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !163

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !164

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.info !143, !taffo.initweight !44
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.info !146, !taffo.initweight !67

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.info !143, !taffo.initweight !44
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.info !146, !taffo.initweight !67

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.info !165, !taffo.initweight !64
  %add22 = add nsw i32 %mul21, 2, !taffo.info !167, !taffo.initweight !67, !taffo.constinfo !21
  %rem23 = srem i32 %add22, %nj, !taffo.info !169, !taffo.initweight !84
  %conv24 = sitofp i32 %rem23 to float, !taffo.info !170, !taffo.initweight !110
  %mul25 = mul nsw i32 5, %nj, !taffo.info !171, !taffo.constinfo !21
  %conv26 = sitofp i32 %mul25 to float, !taffo.info !173
  %div27 = fdiv float %conv24, %conv26, !taffo.info !175, !taffo.initweight !111
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %B, i32 %i.1, !taffo.info !177, !taffo.initweight !64
  %arrayidx29 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx28, i32 0, i32 %j.1, !taffo.info !177, !taffo.initweight !64
  store float %div27, float* %arrayidx29, align 4, !taffo.info !112, !taffo.initweight !67
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !178

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !179

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.info !143, !taffo.initweight !44
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.info !146, !taffo.initweight !67

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.info !143, !taffo.initweight !44
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.info !146, !taffo.initweight !67

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.info !180, !taffo.initweight !64, !taffo.constinfo !21
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.info !182, !taffo.initweight !64
  %rem46 = srem i32 %mul45, %nl, !taffo.info !184, !taffo.initweight !67
  %conv47 = sitofp i32 %rem46 to float, !taffo.info !186, !taffo.initweight !84
  %mul48 = mul nsw i32 5, %nl, !taffo.info !187, !taffo.constinfo !21
  %conv49 = sitofp i32 %mul48 to float, !taffo.info !189
  %div50 = fdiv float %conv47, %conv49, !taffo.info !190, !taffo.initweight !110
  %arrayidx51 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.info !192, !taffo.initweight !64
  %arrayidx52 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx51, i32 0, i32 %j.2, !taffo.info !192, !taffo.initweight !64
  store float %div50, float* %arrayidx52, align 4, !taffo.info !112, !taffo.initweight !67
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !193

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond36, !llvm.loop !194

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.info !143, !taffo.initweight !44
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.info !146, !taffo.initweight !67

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.info !143, !taffo.initweight !44
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.info !146, !taffo.initweight !67

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.info !195, !taffo.initweight !64, !taffo.constinfo !21
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.info !197, !taffo.initweight !64
  %add69 = add nsw i32 %mul68, 2, !taffo.info !199, !taffo.initweight !67, !taffo.constinfo !21
  %rem70 = srem i32 %add69, %nk, !taffo.info !201, !taffo.initweight !84
  %conv71 = sitofp i32 %rem70 to float, !taffo.info !203, !taffo.initweight !110
  %mul72 = mul nsw i32 5, %nk, !taffo.info !204, !taffo.constinfo !21
  %conv73 = sitofp i32 %mul72 to float, !taffo.info !206
  %div74 = fdiv float %conv71, %conv73, !taffo.info !207, !taffo.initweight !111
  %arrayidx75 = getelementptr inbounds [12 x float], [12 x float]* %D, i32 %i.3, !taffo.info !209, !taffo.initweight !64
  %arrayidx76 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx75, i32 0, i32 %j.3, !taffo.info !209, !taffo.initweight !64
  store float %div74, float* %arrayidx76, align 4, !taffo.info !112, !taffo.initweight !67
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond63, !llvm.loop !210

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond59, !llvm.loop !211

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.info !143, !taffo.initweight !44
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.info !146, !taffo.initweight !67

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.info !143, !taffo.initweight !44
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.info !146, !taffo.initweight !67

for.body90:                                       ; preds = %for.cond87
  %arrayidx91 = getelementptr inbounds [8 x float], [8 x float]* %E, i32 %i.4, !taffo.info !212, !taffo.initweight !64
  %arrayidx92 = getelementptr inbounds [8 x float], [8 x float]* %arrayidx91, i32 0, i32 %j.4, !taffo.info !212, !taffo.initweight !64
  store float 0.000000e+00, float* %arrayidx92, align 4, !taffo.info !112, !taffo.initweight !67, !taffo.constinfo !113
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond87, !llvm.loop !213

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond83, !llvm.loop !214

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.info !143, !taffo.initweight !44
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.info !146, !taffo.initweight !67

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.info !143, !taffo.initweight !44
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.info !146, !taffo.initweight !67

for.body106:                                      ; preds = %for.cond103
  %arrayidx107 = getelementptr inbounds [12 x float], [12 x float]* %F, i32 %i.5, !taffo.info !215, !taffo.initweight !64
  %arrayidx108 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx107, i32 0, i32 %j.5, !taffo.info !215, !taffo.initweight !64
  store float 0.000000e+00, float* %arrayidx108, align 4, !taffo.info !112, !taffo.initweight !67, !taffo.constinfo !113
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond103, !llvm.loop !216

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond99, !llvm.loop !217

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.info !143, !taffo.initweight !44
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.info !146, !taffo.initweight !67

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.info !143, !taffo.initweight !44
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.info !145, !taffo.initweight !64
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.info !146, !taffo.initweight !67

for.body122:                                      ; preds = %for.cond119
  %arrayidx123 = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.6, !taffo.info !218, !taffo.initweight !64
  %arrayidx124 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx123, i32 0, i32 %j.6, !taffo.info !218, !taffo.initweight !64
  store float 0.000000e+00, float* %arrayidx124, align 4, !taffo.info !112, !taffo.initweight !67, !taffo.constinfo !113
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond119, !llvm.loop !219

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !21
  br label %for.cond115, !llvm.loop !220

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !221 !taffo.funinfo !222 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !80
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !97
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !99
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !41, !taffo.initweight !111
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !41, !taffo.initweight !114
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !130, !taffo.initweight !117
  %conv = sitofp i32 %factor to float, !taffo.info !225
  %mul = fmul float %1, %conv, !taffo.info !226, !taffo.initweight !228
  %2 = mul nsw i32 %i.0, %m, !taffo.info !99
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !41, !taffo.initweight !111
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !41, !taffo.initweight !114
  store float %mul, float* %arrayidx6, align 4, !taffo.info !63, !taffo.initweight !117
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !229

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !230

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !221 !taffo.funinfo !231 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !80
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !97
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !99
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !45, !taffo.initweight !111
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !45, !taffo.initweight !114
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !232, !taffo.initweight !117
  %conv = sitofp i32 %factor to float, !taffo.info !225
  %mul = fmul float %1, %conv, !taffo.info !233, !taffo.initweight !228
  %2 = mul nsw i32 %i.0, %m, !taffo.info !99
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !45, !taffo.initweight !111
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !45, !taffo.initweight !114
  store float %mul, float* %arrayidx6, align 4, !taffo.info !70, !taffo.initweight !117
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !235

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !236

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !221 !taffo.funinfo !237 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !80
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !97
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !80
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !97
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !99
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !56, !taffo.initweight !111
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !56, !taffo.initweight !114
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !238, !taffo.initweight !117
  %conv = sitofp i32 %factor to float, !taffo.info !225
  %mul = fmul float %1, %conv, !taffo.info !239, !taffo.initweight !228
  %2 = mul nsw i32 %i.0, %m, !taffo.info !99
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !56, !taffo.initweight !111
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !56, !taffo.initweight !114
  store float %mul, float* %arrayidx6, align 4, !taffo.info !75, !taffo.initweight !117
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !241

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !97, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !242

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x402BCB068123810F}
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
!31 = !{void (i32, i32, float*, i32)* @scale_2d.3, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.3, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.4, void (i32, i32, float*, i32)* @scale_2d.9}
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
!42 = !{!"fixp", i32 32, i32 30}
!43 = !{double 0.000000e+00, double 0x3FFBBBBB62413DB8}
!44 = !{i32 0}
!45 = !{!46, !47, i1 false, i2 -1}
!46 = !{!"fixp", i32 32, i32 31}
!47 = !{double 0.000000e+00, double 6.666670e-01}
!48 = !{!46, !49, i1 false, i2 -1}
!49 = !{double 0.000000e+00, double 0x3FE6666666666666}
!50 = !{!42, !51, i1 false, i2 -1}
!51 = !{double 0.000000e+00, double 2.048000e+00}
!52 = !{!46, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 7.333330e-01}
!54 = !{!46, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 0x3FE70A3D70A3D70A}
!56 = !{!57, !1, i1 false, i2 -1}
!57 = !{!"fixp", i32 32, i32 28}
!58 = !{!"G"}
!59 = !{!42, i1 false, i1 false, i2 -1}
!60 = !{i32 1}
!61 = !{!46, i1 false, i1 false, i2 -1}
!62 = !{!57, i1 false, i1 false, i2 -1}
!63 = !{i1 false, !43, i1 false, i2 -1}
!64 = !{i32 2}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = distinct !{null}
!67 = !{i32 3}
!68 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!69 = !{void (i32, i32, float*, i32)* @scale_2d}
!70 = !{i1 false, !47, i1 false, i2 -1}
!71 = !{i1 false, !49, i1 false, i2 -1}
!72 = !{i1 false, !51, i1 false, i2 -1}
!73 = !{i1 false, !53, i1 false, i2 -1}
!74 = !{i1 false, !55, i1 false, i2 -1}
!75 = !{i1 false, !1, i1 false, i2 -1}
!76 = !{i1 false}
!77 = distinct !{null}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 7.000000e+00}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 0.000000e+00, double 1.000000e+00}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 0.000000e+00, double 9.100000e+01}
!84 = !{i32 4}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 1.000000e+00, double 9.100000e+01}
!87 = distinct !{!87, !23}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.000000e+00, double 7.000000e+00}
!90 = distinct !{!90, !23}
!91 = !{i1 false, i1 false, i1 false, i1 false}
!92 = !{i32 1, !93, i32 1, !95, i32 1, !0}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 6.000000e+00, double 6.000000e+00}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 1.200000e+01, double 1.200000e+01}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 1.000000e+00, double 1.000000e+00}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 0.000000e+00, double 0.000000e+00}
!101 = !{i1 false, i1 false, i1 false}
!102 = distinct !{!102, !23}
!103 = distinct !{!103, !23}
!104 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!105 = !{i32 1, !93, i32 1, !106, i32 1, !16, i32 1, !95, i32 1, !108, i32 1, !41, i32 1, !45, i32 1, !48, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !56}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 8.000000e+00, double 8.000000e+00}
!108 = !{i1 false, !109, i1 false, i2 0}
!109 = !{double 1.400000e+01, double 1.400000e+01}
!110 = !{i32 5}
!111 = !{i32 6}
!112 = !{i1 false, i1 false, i1 false, i2 1}
!113 = !{!99, i1 false}
!114 = !{i32 7}
!115 = !{!42, !116, i1 false, i2 -1}
!116 = !{double 0.000000e+00, double 0x3FDDDDDED8680B82}
!117 = !{i32 8}
!118 = !{!42, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x400199998C2DA04C}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !23}
!123 = !{!42, !124, i1 false, i2 -1}
!124 = !{double 0.000000e+00, double 0x3FE0E55FC0AFDDFF}
!125 = !{!42, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 0x40049BA5C31DA17C}
!127 = distinct !{!127, !23}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !23}
!130 = !{!131, !43, i1 false, i2 -1}
!131 = !{!"fixp", i32 32, i32 29}
!132 = !{!131, !51, i1 false, i2 -1}
!133 = !{!134, !135, i1 false, i2 -1}
!134 = !{!"fixp", i32 32, i32 27}
!135 = !{double 0.000000e+00, double 0x400C66202313B3F0}
!136 = !{!134, !1, i1 false, i2 -1}
!137 = !{!134, !138, i1 false, i2 -1}
!138 = !{double 0.000000e+00, double 0x4031724744F43706}
!139 = distinct !{!139, !23}
!140 = distinct !{!140, !23}
!141 = distinct !{!141, !23}
!142 = !{i32 1, !93, i32 1, !106, i32 1, !16, i32 1, !95, i32 1, !108, i32 1, !45, i32 1, !48, i32 1, !52, i32 1, !54, i32 1, !41, i32 1, !50, i32 1, !56}
!143 = !{i1 false, !144, i1 false, i2 1}
!144 = !{double 0.000000e+00, double 1.500000e+01}
!145 = !{i1 false, !81, i1 false, i2 1}
!146 = !{i1 false, !147, i1 false, i2 1}
!147 = !{double 0.000000e+00, double 1.400000e+01}
!148 = !{i1 false, !149, i1 false, i2 1}
!149 = !{double 0.000000e+00, double 1.960000e+02}
!150 = !{i1 false, !151, i1 false, i2 1}
!151 = !{double 1.000000e+00, double 1.970000e+02}
!152 = !{i1 false, !153, i1 false, i2 1}
!153 = !{double 0.000000e+00, double 5.000000e+00}
!154 = !{!131, !153, i1 false, i2 1}
!155 = !{i1 false, !156, i1 false, i2 0}
!156 = !{double 3.000000e+01, double 3.000000e+01}
!157 = !{!134, !156, i1 false, i2 1}
!158 = !{!131, !159, i1 false, i2 1}
!159 = !{double 0.000000e+00, double 0x3FC5555555555555}
!160 = !{!46, !47, i1 false, i2 1}
!161 = !{i1 false, !162, i1 false, i2 1}
!162 = !{double 1.000000e+00, double 1.500000e+01}
!163 = distinct !{!163, !23}
!164 = distinct !{!164, !23}
!165 = !{i1 false, !166, i1 false, i2 1}
!166 = !{double 0.000000e+00, double 2.100000e+02}
!167 = !{i1 false, !168, i1 false, i2 1}
!168 = !{double 2.000000e+00, double 2.120000e+02}
!169 = !{i1 false, !79, i1 false, i2 1}
!170 = !{!131, !79, i1 false, i2 1}
!171 = !{i1 false, !172, i1 false, i2 0}
!172 = !{double 4.000000e+01, double 4.000000e+01}
!173 = !{!174, !172, i1 false, i2 1}
!174 = !{!"fixp", i32 32, i32 26}
!175 = !{!131, !176, i1 false, i2 1}
!176 = !{double 0.000000e+00, double 1.750000e-01}
!177 = !{!46, !49, i1 false, i2 1}
!178 = distinct !{!178, !23}
!179 = distinct !{!179, !23}
!180 = !{i1 false, !181, i1 false, i2 1}
!181 = !{double 3.000000e+00, double 1.700000e+01}
!182 = !{i1 false, !183, i1 false, i2 1}
!183 = !{double 0.000000e+00, double 2.380000e+02}
!184 = !{i1 false, !185, i1 false, i2 1}
!185 = !{double 0.000000e+00, double 1.100000e+01}
!186 = !{!57, !185, i1 false, i2 1}
!187 = !{i1 false, !188, i1 false, i2 0}
!188 = !{double 6.000000e+01, double 6.000000e+01}
!189 = !{!174, !188, i1 false, i2 1}
!190 = !{!46, !191, i1 false, i2 1}
!191 = !{double 0.000000e+00, double 0x3FC7777777777777}
!192 = !{!46, !53, i1 false, i2 1}
!193 = distinct !{!193, !23}
!194 = distinct !{!194, !23}
!195 = !{i1 false, !196, i1 false, i2 1}
!196 = !{double 2.000000e+00, double 1.600000e+01}
!197 = !{i1 false, !198, i1 false, i2 1}
!198 = !{double 0.000000e+00, double 2.240000e+02}
!199 = !{i1 false, !200, i1 false, i2 1}
!200 = !{double 2.000000e+00, double 2.260000e+02}
!201 = !{i1 false, !202, i1 false, i2 1}
!202 = !{double 0.000000e+00, double 9.000000e+00}
!203 = !{!57, !202, i1 false, i2 1}
!204 = !{i1 false, !205, i1 false, i2 0}
!205 = !{double 5.000000e+01, double 5.000000e+01}
!206 = !{!174, !205, i1 false, i2 1}
!207 = !{!46, !208, i1 false, i2 1}
!208 = !{double 0.000000e+00, double 1.800000e-01}
!209 = !{!46, !55, i1 false, i2 1}
!210 = distinct !{!210, !23}
!211 = distinct !{!211, !23}
!212 = !{!42, !43, i1 false, i2 1}
!213 = distinct !{!213, !23}
!214 = distinct !{!214, !23}
!215 = !{!42, !51, i1 false, i2 1}
!216 = distinct !{!216, !23}
!217 = distinct !{!217, !23}
!218 = !{!57, !1, i1 false, i2 1}
!219 = distinct !{!219, !23}
!220 = distinct !{!220, !23}
!221 = !{i32 -1, i32 -1, i32 3, i32 -1}
!222 = !{i32 1, !93, i32 1, !106, i32 1, !41, i32 1, !223}
!223 = !{i1 false, !224, i1 false, i2 0}
!224 = !{double 4.000000e+00, double 4.000000e+00}
!225 = !{!131, !224, i1 false, i2 1}
!226 = !{!131, !227, i1 false, i2 -1}
!227 = !{double 0.000000e+00, double 0x401BBBBB62413DB8}
!228 = !{i32 9}
!229 = distinct !{!229, !23}
!230 = distinct !{!230, !23}
!231 = !{i32 1, !93, i32 1, !16, i32 1, !45, i32 1, !223}
!232 = !{!42, !47, i1 false, i2 -1}
!233 = !{!42, !234, i1 false, i2 -1}
!234 = !{double 0.000000e+00, double 0x40055556084A515D}
!235 = distinct !{!235, !23}
!236 = distinct !{!236, !23}
!237 = !{i32 1, !93, i32 1, !95, i32 1, !56, i32 1, !223}
!238 = !{!174, !1, i1 false, i2 -1}
!239 = !{!174, !240, i1 false, i2 -1}
!240 = !{double 0.000000e+00, double 0x404BCB068123810F}
!241 = distinct !{!241, !23}
!242 = distinct !{!242, !23}
