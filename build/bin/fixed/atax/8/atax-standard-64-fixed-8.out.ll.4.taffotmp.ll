; ModuleID = './build/bin/fixed/atax/8/atax-standard-64-fixed-8.out.ll.3.taffotmp.ll'
source_filename = "./sources/atax.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@y_float = dso_local global [22 x float] zeroinitializer, align 4, !taffo.info !0
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
  %A = alloca [20 x [22 x float]], align 4, !taffo.info !42, !taffo.initweight !45
  %x = alloca [22 x float], align 4, !taffo.info !46, !taffo.initweight !45
  %y = alloca [22 x float], align 4, !taffo.info !49, !taffo.initweight !45, !taffo.target !51
  %tmp = alloca [20 x float], align 4, !taffo.info !52, !taffo.initweight !45
  %A1 = bitcast [20 x [22 x float]]* %A to i8*, !taffo.info !55, !taffo.initweight !56
  %x2 = bitcast [22 x float]* %x to i8*, !taffo.info !57, !taffo.initweight !56
  %y3 = bitcast [22 x float]* %y to i8*, !taffo.info !58, !taffo.initweight !56, !taffo.target !51
  %tmp4 = bitcast [20 x float]* %tmp to i8*, !taffo.info !59, !taffo.initweight !56
  %arraydecay = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.info !42, !taffo.initweight !56
  %arraydecay5 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.info !46, !taffo.initweight !56
  %arraydecay6 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.info !49, !taffo.initweight !56, !taffo.target !51
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.info !52, !taffo.initweight !56
  call void @init_array.5(i32 noundef 20, i32 noundef 22, [22 x float]* noundef %arraydecay, float* noundef %arraydecay5, float* noundef %arraydecay6, float* noundef %arraydecay7), !taffo.info !60, !taffo.initweight !61, !taffo.constinfo !62, !taffo.originalCall !63
  %arraydecay8 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.info !42, !taffo.initweight !56
  %0 = bitcast [22 x float]* %arraydecay8 to float*, !taffo.info !42, !taffo.initweight !61
  call void @scale_2d.6(i32 noundef 20, i32 noundef 22, float* noundef %0, i32 noundef 64), !taffo.info !60, !taffo.initweight !64, !taffo.constinfo !65, !taffo.originalCall !66
  %arraydecay9 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.info !46, !taffo.initweight !56
  call void @scale_1d.1(i32 noundef 22, float* noundef %arraydecay9, i32 noundef 64), !taffo.info !67, !taffo.initweight !61, !taffo.constinfo !68, !taffo.originalCall !69
  %arraydecay10 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.info !49, !taffo.initweight !56, !taffo.target !51
  call void @scale_1d.2(i32 noundef 22, float* noundef %arraydecay10, i32 noundef 64), !taffo.info !70, !taffo.initweight !61, !taffo.constinfo !68, !taffo.target !51, !taffo.originalCall !69
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.info !52, !taffo.initweight !56
  call void @scale_1d.4(i32 noundef 20, float* noundef %arraydecay11, i32 noundef 64), !taffo.info !71, !taffo.initweight !61, !taffo.constinfo !68, !taffo.originalCall !69
  call void @timer_start(), !taffo.constinfo !72
  %arraydecay12 = getelementptr inbounds [20 x [22 x float]], [20 x [22 x float]]* %A, i32 0, i32 0, !taffo.info !42, !taffo.initweight !56
  %arraydecay13 = getelementptr inbounds [22 x float], [22 x float]* %x, i32 0, i32 0, !taffo.info !46, !taffo.initweight !56
  %arraydecay14 = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 0, !taffo.info !49, !taffo.initweight !56, !taffo.target !51
  %arraydecay15 = getelementptr inbounds [20 x float], [20 x float]* %tmp, i32 0, i32 0, !taffo.info !52, !taffo.initweight !56
  call void @kernel_atax.3(i32 noundef 20, i32 noundef 22, [22 x float]* noundef %arraydecay12, float* noundef %arraydecay13, float* noundef %arraydecay14, float* noundef %arraydecay15), !taffo.info !60, !taffo.initweight !61, !taffo.constinfo !62, !taffo.originalCall !73
  call void @timer_stop(), !taffo.constinfo !72
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !74
  %cmp = icmp slt i32 %i.0, 22, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [22 x float], [22 x float]* %y, i32 0, i32 %i.0, !taffo.info !49, !taffo.initweight !56, !taffo.target !51
  %1 = load float, float* %arrayidx, align 4, !taffo.info !49, !taffo.initweight !61, !taffo.target !51
  %arrayidx16 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx16, align 4, !taffo.info !70, !taffo.initweight !64, !taffo.target !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 22, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !81
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !24 !taffo.funinfo !82 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !87, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !85
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !81
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !68
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !90 !taffo.funinfo !91 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !46, !taffo.initweight !94
  %0 = load float, float* %arrayidx, align 4, !taffo.info !46, !taffo.initweight !95
  %conv = sitofp i32 %factor to float, !taffo.info !96
  %mul = fmul float %0, %conv, !taffo.info !97, !taffo.initweight !100
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !46, !taffo.initweight !94
  store float %mul, float* %arrayidx1, align 4, !taffo.info !67, !taffo.initweight !95
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !101

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !90 !taffo.funinfo !102 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !49, !taffo.initweight !94
  %0 = load float, float* %arrayidx, align 4, !taffo.info !49, !taffo.initweight !95
  %conv = sitofp i32 %factor to float, !taffo.info !96
  %mul = fmul float %0, %conv, !taffo.info !103, !taffo.initweight !100
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !49, !taffo.initweight !94
  store float %mul, float* %arrayidx1, align 4, !taffo.info !70, !taffo.initweight !95
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !106

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.3(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !107 !taffo.funinfo !108 !taffo.sourceFunction !73 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !49, !taffo.initweight !94
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.info !111, !taffo.initweight !94, !taffo.constinfo !112
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !76
  %cmp2 = icmp slt i32 %i.1, %m, !taffo.info !85
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !52, !taffo.initweight !94
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !111, !taffo.initweight !94, !taffo.constinfo !112
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc14, %for.inc13 ], !taffo.info !76
  %cmp6 = icmp slt i32 %j.0, %n, !taffo.info !85
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !52, !taffo.initweight !94
  %0 = load float, float* %arrayidx8, align 4, !taffo.info !114, !taffo.initweight !95
  %arrayidx9 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.info !42, !taffo.initweight !94
  %arrayidx10 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx9, i32 0, i32 %j.0, !taffo.info !42, !taffo.initweight !95
  %1 = load float, float* %arrayidx10, align 4, !taffo.info !42, !taffo.initweight !100
  %arrayidx11 = getelementptr inbounds float, float* %x, i32 %j.0, !taffo.info !46, !taffo.initweight !94
  %2 = load float, float* %arrayidx11, align 4, !taffo.info !46, !taffo.initweight !95
  %mul = fmul float %1, %2, !taffo.info !116, !taffo.initweight !100
  %add = fadd float %0, %mul, !taffo.info !119, !taffo.initweight !100
  %arrayidx12 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !52, !taffo.initweight !94
  store float %add, float* %arrayidx12, align 4, !taffo.info !71, !taffo.initweight !95
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %inc14 = add nsw i32 %j.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !121

for.end15:                                        ; preds = %for.cond5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %j.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.inc26 ], !taffo.info !76
  %cmp17 = icmp slt i32 %j.1, %n, !taffo.info !85
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %arrayidx19 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.info !49, !taffo.initweight !94
  %3 = load float, float* %arrayidx19, align 4, !taffo.info !122, !taffo.initweight !95
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.info !42, !taffo.initweight !94
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.1, !taffo.info !42, !taffo.initweight !95
  %4 = load float, float* %arrayidx21, align 4, !taffo.info !42, !taffo.initweight !100
  %arrayidx22 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !52, !taffo.initweight !94
  %5 = load float, float* %arrayidx22, align 4, !taffo.info !52, !taffo.initweight !95
  %mul23 = fmul float %4, %5, !taffo.info !124, !taffo.initweight !100
  %add24 = fadd float %3, %mul23, !taffo.info !127, !taffo.initweight !100
  %arrayidx25 = getelementptr inbounds float, float* %y, i32 %j.1, !taffo.info !49, !taffo.initweight !94
  store float %add24, float* %arrayidx25, align 4, !taffo.info !70, !taffo.initweight !95
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !129

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !130

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !90 !taffo.funinfo !131 !taffo.sourceFunction !69 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !52, !taffo.initweight !94
  %0 = load float, float* %arrayidx, align 4, !taffo.info !52, !taffo.initweight !95
  %conv = sitofp i32 %factor to float, !taffo.info !96
  %mul = fmul float %0, %conv, !taffo.info !132, !taffo.initweight !100
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !52, !taffo.initweight !94
  store float %mul, float* %arrayidx1, align 4, !taffo.info !71, !taffo.initweight !95
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !135

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5(i32 noundef %m, i32 noundef %n, [22 x float]* noundef %A, float* noundef %x, float* noundef %y, float* noundef %tmp) #0 !taffo.initweight !107 !taffo.funinfo !108 !taffo.sourceFunction !63 {
entry:
  %conv = sitofp i32 %n to float, !taffo.info !136, !taffo.initweight !61
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !138, !taffo.initweight !45
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !140, !taffo.initweight !61
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !138, !taffo.initweight !64

for.body:                                         ; preds = %for.cond
  %conv5 = sitofp i32 %i.0 to float, !taffo.info !141, !taffo.initweight !61
  %div = fdiv float %conv5, %conv, !taffo.info !142, !taffo.initweight !61
  %add = fadd float 1.000000e+00, %div, !taffo.info !144, !taffo.initweight !64, !taffo.constinfo !146
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !147, !taffo.initweight !61
  store float %add, float* %arrayidx, align 4, !taffo.info !111, !taffo.initweight !64
  %arrayidx6 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !148, !taffo.initweight !61
  store float 0.000000e+00, float* %arrayidx6, align 4, !taffo.info !111, !taffo.initweight !64, !taffo.constinfo !112
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !149, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.info !138, !taffo.initweight !45
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.info !140, !taffo.initweight !61
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.info !138, !taffo.initweight !64

for.body10:                                       ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds float, float* %tmp, i32 %i.1, !taffo.info !151, !taffo.initweight !61
  store float 0.000000e+00, float* %arrayidx11, align 4, !taffo.info !111, !taffo.initweight !64, !taffo.constinfo !112
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.info !138, !taffo.initweight !45
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.info !140, !taffo.initweight !61
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.info !138, !taffo.initweight !64

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.info !152, !taffo.initweight !61
  %rem = srem i32 %add16, %n, !taffo.info !154, !taffo.initweight !64
  %conv17 = sitofp i32 %rem to float, !taffo.info !156, !taffo.initweight !157
  %mul = mul nsw i32 5, %m, !taffo.info !158, !taffo.constinfo !21
  %conv18 = sitofp i32 %mul to float, !taffo.info !160
  %div19 = fdiv float %conv17, %conv18, !taffo.info !161, !taffo.initweight !94
  %arrayidx20 = getelementptr inbounds [22 x float], [22 x float]* %A, i32 %i.1, !taffo.info !164, !taffo.initweight !61
  %arrayidx21 = getelementptr inbounds [22 x float], [22 x float]* %arrayidx20, i32 0, i32 %j.0, !taffo.info !164, !taffo.initweight !61
  store float %div19, float* %arrayidx21, align 4, !taffo.info !111, !taffo.initweight !64
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.info !149, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !165

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.info !149, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !166

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !167 !taffo.funinfo !168 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !85
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !76
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !85
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !87
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !42, !taffo.initweight !95
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !42, !taffo.initweight !100
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !42, !taffo.initweight !169
  %conv = sitofp i32 %factor to float, !taffo.info !96
  %mul = fmul float %1, %conv, !taffo.info !170, !taffo.initweight !173
  %2 = mul nsw i32 %i.0, %m, !taffo.info !87
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !42, !taffo.initweight !95
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !42, !taffo.initweight !100
  store float %mul, float* %arrayidx6, align 4, !taffo.info !60, !taffo.initweight !169
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !174

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !175

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x413EC418A0000000}
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
!28 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.2, void (i32, float*, i32)* @scale_1d.4}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = !{void (i32, i32, float*, i32)* @scale_2d.6}
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
!43 = !{!"fixp", i32 32, i32 28}
!44 = !{double 0.000000e+00, double 1.344000e+01}
!45 = !{i32 0}
!46 = !{!47, !48, i1 false, i2 -1}
!47 = !{!"fixp", i32 32, i32 25}
!48 = !{double 6.400000e+01, double 0x405F45D18090B418}
!49 = !{!50, !1, i1 false, i2 -1}
!50 = !{!"fixp", i32 32, i32 11}
!51 = !{!"y"}
!52 = !{!53, !54, i1 false, i2 -1}
!53 = !{!"fixp", i32 32, i32 18}
!54 = !{double 0.000000e+00, double 0x40CE851EBFFCDAB2}
!55 = !{!43, i1 false, i1 false, i2 -1}
!56 = !{i32 1}
!57 = !{!47, i1 false, i1 false, i2 -1}
!58 = !{!50, i1 false, i1 false, i2 -1}
!59 = !{!53, i1 false, i1 false, i2 -1}
!60 = !{i1 false, !44, i1 false, i2 -1}
!61 = !{i32 2}
!62 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!63 = distinct !{null}
!64 = !{i32 3}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = !{void (i32, i32, float*, i32)* @scale_2d}
!67 = !{i1 false, !48, i1 false, i2 -1}
!68 = !{i1 false, i1 false, i1 false, i1 false}
!69 = !{void (i32, float*, i32)* @scale_1d}
!70 = !{i1 false, !1, i1 false, i2 -1}
!71 = !{i1 false, !54, i1 false, i2 -1}
!72 = !{i1 false}
!73 = distinct !{null}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 2.300000e+01}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 1.000000e+00}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 2.300000e+01}
!80 = distinct !{!80, !23}
!81 = !{i1 false, i1 false, i1 false}
!82 = !{i32 1, !83, i32 1, !0}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 2.200000e+01, double 2.200000e+01}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 1.000000e+00, double 1.000000e+00}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 0.000000e+00, double 0.000000e+00}
!89 = distinct !{!89, !23}
!90 = !{i32 -1, i32 2, i32 -1}
!91 = !{i32 1, !83, i32 1, !46, i32 1, !92}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 6.400000e+01, double 6.400000e+01}
!94 = !{i32 5}
!95 = !{i32 6}
!96 = !{!47, !93, i1 false, i2 1}
!97 = !{!98, !99, i1 false, i2 -1}
!98 = !{!"fixp", i32 32, i32 19}
!99 = !{double 4.096000e+03, double 0x40BF45D18090B418}
!100 = !{i32 7}
!101 = distinct !{!101, !23}
!102 = !{i32 1, !83, i32 1, !49, i32 1, !92}
!103 = !{!104, !105, i1 false, i2 -1}
!104 = !{!"fixp", i32 32, i32 5}
!105 = !{double 0.000000e+00, double 0x419EC418A0000000}
!106 = distinct !{!106, !23}
!107 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!108 = !{i32 1, !109, i32 1, !83, i32 1, !42, i32 1, !46, i32 1, !49, i32 1, !52}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 2.000000e+01, double 2.000000e+01}
!111 = !{i1 false, i1 false, i1 false, i2 1}
!112 = !{!87, i1 false}
!113 = distinct !{!113, !23}
!114 = !{!115, !54, i1 false, i2 -1}
!115 = !{!"fixp", i32 32, i32 17}
!116 = !{!117, !118, i1 false, i2 -1}
!117 = !{!"fixp", i32 32, i32 21}
!118 = !{double 0.000000e+00, double 0x409A44E32E8E07EB}
!119 = !{!115, !120, i1 false, i2 -1}
!120 = !{double 0.000000e+00, double 0x40D0E6DD92E74DD8}
!121 = distinct !{!121, !23}
!122 = !{!123, !1, i1 false, i2 -1}
!123 = !{!"fixp", i32 32, i32 10}
!124 = !{!125, !126, i1 false, i2 -1}
!125 = !{!"fixp", i32 32, i32 14}
!126 = !{double 0.000000e+00, double 0x4109A3055996F525}
!127 = !{!123, !128, i1 false, i2 -1}
!128 = !{double 0.000000e+00, double 0x4140FC3CA5996F52}
!129 = distinct !{!129, !23}
!130 = distinct !{!130, !23}
!131 = !{i32 1, !109, i32 1, !52, i32 1, !92}
!132 = !{!133, !134, i1 false, i2 -1}
!133 = !{!"fixp", i32 32, i32 12}
!134 = !{double 0.000000e+00, double 0x412E851EBFFCDAB2}
!135 = distinct !{!135, !23}
!136 = !{!137, !84, i1 false, i2 1}
!137 = !{!"fixp", i32 32, i32 27}
!138 = !{i1 false, !139, i1 false, i2 -1}
!139 = !{double 0.000000e+00, double 2.200000e+01}
!140 = !{i1 false, !77, i1 false, i2 -1}
!141 = !{!137, !139, i1 false, i2 -1}
!142 = !{!143, !77, i1 false, i2 1}
!143 = !{!"fixp", i32 32, i32 30}
!144 = !{!143, !145, i1 false, i2 1}
!145 = !{double 1.000000e+00, double 2.000000e+00}
!146 = !{!85, i1 false}
!147 = !{!47, !48, i1 false, i2 1}
!148 = !{!50, !1, i1 false, i2 1}
!149 = !{i1 false, !79, i1 false, i2 -1}
!150 = distinct !{!150, !23}
!151 = !{!53, !54, i1 false, i2 1}
!152 = !{i1 false, !153, i1 false, i2 -1}
!153 = !{double 0.000000e+00, double 4.400000e+01}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double 0.000000e+00, double 2.100000e+01}
!156 = !{!137, !155, i1 false, i2 -1}
!157 = !{i32 4}
!158 = !{i1 false, !159, i1 false, i2 0}
!159 = !{double 1.000000e+02, double 1.000000e+02}
!160 = !{!47, !159, i1 false, i2 1}
!161 = !{!162, !163, i1 false, i2 -1}
!162 = !{!"fixp", i32 32, i32 31}
!163 = !{double 0.000000e+00, double 2.100000e-01}
!164 = !{!43, !44, i1 false, i2 1}
!165 = distinct !{!165, !23}
!166 = distinct !{!166, !23}
!167 = !{i32 -1, i32 -1, i32 3, i32 -1}
!168 = !{i32 1, !109, i32 1, !83, i32 1, !42, i32 1, !92}
!169 = !{i32 8}
!170 = !{!171, !172, i1 false, i2 -1}
!171 = !{!"fixp", i32 32, i32 22}
!172 = !{double 0.000000e+00, double 0x408AE147AE147AE1}
!173 = !{i32 9}
!174 = distinct !{!174, !23}
!175 = distinct !{!175, !23}
