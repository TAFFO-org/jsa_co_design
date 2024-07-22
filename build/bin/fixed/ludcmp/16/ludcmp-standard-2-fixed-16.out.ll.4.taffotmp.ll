; ModuleID = './build/bin/fixed/ludcmp/16/ludcmp-standard-2-fixed-16.out.ll.3.taffotmp.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !0
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
  %A = alloca [20 x [20 x float]], align 4, !taffo.info !42, !taffo.initweight !45
  %B = alloca [20 x [20 x float]], align 4, !taffo.info !46, !taffo.initweight !45
  %b = alloca [20 x float], align 4, !taffo.info !48, !taffo.initweight !45
  %x = alloca [20 x float], align 4, !taffo.info !51, !taffo.initweight !45, !taffo.target !53
  %y = alloca [20 x float], align 4, !taffo.info !54, !taffo.initweight !45
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.info !56, !taffo.initweight !57
  %B2 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.info !56, !taffo.initweight !57
  %b3 = bitcast [20 x float]* %b to i8*, !taffo.info !58, !taffo.initweight !57
  %x4 = bitcast [20 x float]* %x to i8*, !taffo.info !59, !taffo.initweight !57, !taffo.target !53
  %y5 = bitcast [20 x float]* %y to i8*, !taffo.info !58, !taffo.initweight !57
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !42, !taffo.initweight !57
  %arraydecay6 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 0, !taffo.info !46, !taffo.initweight !57
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57, !taffo.target !53
  %arraydecay9 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  call void @init_array.5(i32 noundef 20, [20 x float]* noundef %arraydecay, [20 x float]* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.info !60, !taffo.initweight !61, !taffo.constinfo !62, !taffo.originalCall !63
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !42, !taffo.initweight !57
  %0 = bitcast [20 x float]* %arraydecay10 to float*, !taffo.info !42, !taffo.initweight !61
  call void @scale_2d.6(i32 noundef 20, i32 noundef 20, float* noundef %0, i32 noundef 2), !taffo.info !60, !taffo.initweight !64, !taffo.constinfo !65, !taffo.originalCall !66
  %arraydecay11 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 0, !taffo.info !46, !taffo.initweight !57
  %1 = bitcast [20 x float]* %arraydecay11 to float*, !taffo.info !46, !taffo.initweight !61
  call void @scale_2d.6(i32 noundef 20, i32 noundef 20, float* noundef %1, i32 noundef 2), !taffo.info !67, !taffo.initweight !64, !taffo.constinfo !65, !taffo.originalCall !66
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay12, i32 noundef 2), !taffo.info !68, !taffo.initweight !61, !taffo.constinfo !69, !taffo.originalCall !70
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57, !taffo.target !53
  call void @scale_1d.2(i32 noundef 20, float* noundef %arraydecay13, i32 noundef 2), !taffo.info !71, !taffo.initweight !61, !taffo.constinfo !69, !taffo.target !53, !taffo.originalCall !70
  %arraydecay14 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  call void @scale_1d.1(i32 noundef 20, float* noundef %arraydecay14, i32 noundef 2), !taffo.info !72, !taffo.initweight !61, !taffo.constinfo !69, !taffo.originalCall !70
  call void @timer_start(), !taffo.constinfo !73
  %arraydecay15 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !42, !taffo.initweight !57
  %arraydecay16 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.info !48, !taffo.initweight !57
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.info !51, !taffo.initweight !57, !taffo.target !53
  %arraydecay18 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.info !54, !taffo.initweight !57
  call void @kernel_ludcmp.3(i32 noundef 20, [20 x float]* noundef %arraydecay15, float* noundef %arraydecay16, float* noundef %arraydecay17, float* noundef %arraydecay18), !taffo.info !60, !taffo.initweight !61, !taffo.constinfo !74, !taffo.originalCall !75
  call void @timer_stop(), !taffo.constinfo !73
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !78
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %i.0, !taffo.info !51, !taffo.initweight !57, !taffo.target !53
  %2 = load float, float* %arrayidx, align 4, !taffo.info !51, !taffo.initweight !61, !taffo.target !53
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %2, float* %arrayidx19, align 4, !taffo.info !71, !taffo.initweight !64, !taffo.target !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !80, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0)), !taffo.constinfo !83
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x) #0 !taffo.initweight !24 !taffo.funinfo !84 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !89, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !87
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !83
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !92 !taffo.funinfo !93 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !48, !taffo.initweight !94
  %0 = load float, float* %arrayidx, align 4, !taffo.info !95, !taffo.initweight !96
  %conv = sitofp i32 %factor to float, !taffo.info !97
  %mul = fmul float %0, %conv, !taffo.info !99, !taffo.initweight !101
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !48, !taffo.initweight !94
  store float %mul, float* %arrayidx1, align 4, !taffo.info !68, !taffo.initweight !96
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !102

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !92 !taffo.funinfo !103 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !51, !taffo.initweight !94
  %0 = load float, float* %arrayidx, align 4, !taffo.info !104, !taffo.initweight !96
  %conv = sitofp i32 %factor to float, !taffo.info !97
  %mul = fmul float %0, %conv, !taffo.info !106, !taffo.initweight !101
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0, !taffo.info !51, !taffo.initweight !94
  store float %mul, float* %arrayidx1, align 4, !taffo.info !71, !taffo.initweight !96
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !108

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.3(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !109 !taffo.funinfo !110 !taffo.sourceFunction !75 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !78
  %cmp3 = icmp slt i32 %j.0, %i.0, !taffo.info !89
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !42, !taffo.initweight !94
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !42, !taffo.initweight !96
  %0 = load float, float* %arrayidx5, align 4, !taffo.info !111, !taffo.initweight !61
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ], !taffo.info !78
  %w.0 = phi float [ %0, %for.body4 ], [ %sub, %for.inc ], !taffo.info !114, !taffo.initweight !45
  %cmp7 = icmp slt i32 %k.0, %j.0, !taffo.info !89
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !42, !taffo.initweight !94
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %k.0, !taffo.info !42, !taffo.initweight !96
  %1 = load float, float* %arrayidx10, align 4, !taffo.info !42, !taffo.initweight !101
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.0, !taffo.info !42, !taffo.initweight !94
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.info !42, !taffo.initweight !96
  %2 = load float, float* %arrayidx12, align 4, !taffo.info !42, !taffo.initweight !101
  %mul = fmul float %1, %2, !taffo.info !116, !taffo.initweight !118
  %sub = fsub float %w.0, %mul, !taffo.info !119, !taffo.initweight !61
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond6, !llvm.loop !121

for.end:                                          ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.0, !taffo.info !42, !taffo.initweight !94
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !42, !taffo.initweight !96
  %3 = load float, float* %arrayidx14, align 4, !taffo.info !42, !taffo.initweight !101
  %div = fdiv float %w.0, %3, !taffo.info !122, !taffo.initweight !61
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !42, !taffo.initweight !94
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.info !42, !taffo.initweight !96
  store float %div, float* %arrayidx16, align 4, !taffo.info !125, !taffo.initweight !64
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !126

for.end19:                                        ; preds = %for.cond2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !78
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !87
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !42, !taffo.initweight !94
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.1, !taffo.info !42, !taffo.initweight !96
  %4 = load float, float* %arrayidx24, align 4, !taffo.info !111, !taffo.initweight !61
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc35, %for.inc34 ], !taffo.info !78
  %w.1 = phi float [ %4, %for.body22 ], [ %sub33, %for.inc34 ], !taffo.info !114, !taffo.initweight !45
  %cmp26 = icmp slt i32 %k.1, %i.0, !taffo.info !89
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !42, !taffo.initweight !94
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %k.1, !taffo.info !42, !taffo.initweight !96
  %5 = load float, float* %arrayidx29, align 4, !taffo.info !42, !taffo.initweight !101
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.1, !taffo.info !42, !taffo.initweight !94
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %j.1, !taffo.info !42, !taffo.initweight !96
  %6 = load float, float* %arrayidx31, align 4, !taffo.info !42, !taffo.initweight !101
  %mul32 = fmul float %5, %6, !taffo.info !116, !taffo.initweight !118
  %sub33 = fsub float %w.1, %mul32, !taffo.info !119, !taffo.initweight !61
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %inc35 = add nsw i32 %k.1, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond25, !llvm.loop !127

for.end36:                                        ; preds = %for.cond25
  %arrayidx37 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !42, !taffo.initweight !94
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %j.1, !taffo.info !42, !taffo.initweight !96
  store float %w.1, float* %arrayidx38, align 4, !taffo.info !125, !taffo.initweight !61
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !128

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !129

for.end44:                                        ; preds = %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %i.1 = phi i32 [ 0, %for.end44 ], [ %inc62, %for.inc61 ], !taffo.info !78
  %cmp46 = icmp slt i32 %i.1, %n, !taffo.info !87
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %arrayidx48 = getelementptr inbounds float, float* %b, i32 %i.1, !taffo.info !48, !taffo.initweight !94
  %7 = load float, float* %arrayidx48, align 4, !taffo.info !111, !taffo.initweight !61
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %j.2 = phi i32 [ 0, %for.body47 ], [ %inc58, %for.inc57 ], !taffo.info !78
  %w.2 = phi float [ %7, %for.body47 ], [ %sub56, %for.inc57 ], !taffo.info !114, !taffo.initweight !45
  %cmp50 = icmp slt i32 %j.2, %i.1, !taffo.info !89
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !42, !taffo.initweight !94
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %j.2, !taffo.info !42, !taffo.initweight !96
  %8 = load float, float* %arrayidx53, align 4, !taffo.info !42, !taffo.initweight !101
  %arrayidx54 = getelementptr inbounds float, float* %y, i32 %j.2, !taffo.info !54, !taffo.initweight !94
  %9 = load float, float* %arrayidx54, align 4, !taffo.info !54, !taffo.initweight !96
  %mul55 = fmul float %8, %9, !taffo.info !130, !taffo.initweight !101
  %sub56 = fsub float %w.2, %mul55, !taffo.info !133, !taffo.initweight !61
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %j.2, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond49, !llvm.loop !135

for.end59:                                        ; preds = %for.cond49
  %arrayidx60 = getelementptr inbounds float, float* %y, i32 %i.1, !taffo.info !54, !taffo.initweight !94
  store float %w.2, float* %arrayidx60, align 4, !taffo.info !125, !taffo.initweight !61
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond45, !llvm.loop !136

for.end63:                                        ; preds = %for.cond45
  %sub64 = sub nsw i32 %n, 1, !taffo.info !137, !taffo.constinfo !21
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %i.2 = phi i32 [ %sub64, %for.end63 ], [ %dec, %for.inc84 ], !taffo.info !139
  %cmp66 = icmp sge i32 %i.2, 0, !taffo.info !87
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %arrayidx68 = getelementptr inbounds float, float* %y, i32 %i.2, !taffo.info !54, !taffo.initweight !94
  %10 = load float, float* %arrayidx68, align 4, !taffo.info !111, !taffo.initweight !61
  %add = add nsw i32 %i.2, 1, !taffo.info !85, !taffo.constinfo !21
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %j.3 = phi i32 [ %add, %for.body67 ], [ %inc78, %for.inc77 ], !taffo.info !141
  %w.3 = phi float [ %10, %for.body67 ], [ %sub76, %for.inc77 ], !taffo.info !114, !taffo.initweight !45
  %cmp70 = icmp slt i32 %j.3, %n, !taffo.info !89
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2, !taffo.info !42, !taffo.initweight !94
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %j.3, !taffo.info !42, !taffo.initweight !96
  %11 = load float, float* %arrayidx73, align 4, !taffo.info !42, !taffo.initweight !101
  %arrayidx74 = getelementptr inbounds float, float* %x, i32 %j.3, !taffo.info !51, !taffo.initweight !94
  %12 = load float, float* %arrayidx74, align 4, !taffo.info !51, !taffo.initweight !96
  %mul75 = fmul float %11, %12, !taffo.info !143, !taffo.initweight !101
  %sub76 = fsub float %w.3, %mul75, !taffo.info !145, !taffo.initweight !61
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !147, !taffo.constinfo !21
  br label %for.cond69, !llvm.loop !149

for.end79:                                        ; preds = %for.cond69
  %arrayidx80 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2, !taffo.info !42, !taffo.initweight !94
  %arrayidx81 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx80, i32 0, i32 %i.2, !taffo.info !42, !taffo.initweight !96
  %13 = load float, float* %arrayidx81, align 4, !taffo.info !42, !taffo.initweight !101
  %div82 = fdiv float %w.3, %13, !taffo.info !122, !taffo.initweight !61
  %arrayidx83 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.info !51, !taffo.initweight !94
  store float %div82, float* %arrayidx83, align 4, !taffo.info !125, !taffo.initweight !64
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %dec = add nsw i32 %i.2, -1, !taffo.info !150, !taffo.constinfo !21
  br label %for.cond65, !llvm.loop !152

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !153 !taffo.funinfo !154 !taffo.sourceFunction !63 {
entry:
  %conv = sitofp i32 %n to float, !taffo.info !155, !taffo.initweight !61
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !156, !taffo.initweight !45
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !157, !taffo.initweight !61
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !158, !taffo.initweight !64

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !160, !taffo.initweight !61
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !162
  %arrayidx5 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !163, !taffo.initweight !61
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !162
  %add = add nsw i32 %i.0, 1, !taffo.info !164, !taffo.initweight !61, !taffo.constinfo !21
  %conv6 = sitofp i32 %add to float, !taffo.info !165, !taffo.initweight !64
  %div = fdiv float %conv6, %conv, !taffo.info !166, !taffo.initweight !61
  %conv7 = fpext float %div to double, !taffo.info !166, !taffo.initweight !64
  %div8 = fdiv double %conv7, 2.000000e+00, !taffo.info !168, !taffo.initweight !171, !taffo.constinfo !172
  %add9 = fadd double %div8, 4.000000e+00, !taffo.info !173, !taffo.initweight !94, !taffo.constinfo !175
  %conv10 = fptrunc double %add9 to float, !taffo.info !178, !taffo.initweight !96
  %arrayidx11 = getelementptr inbounds float, float* %b, i32 %i.0, !taffo.info !180, !taffo.initweight !61
  store float %conv10, float* %arrayidx11, align 4, !taffo.info !161, !taffo.initweight !64
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !164, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !181

for.end:                                          ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc42, %for.inc41 ], !taffo.info !156, !taffo.initweight !45
  %cmp13 = icmp slt i32 %i.1, %n, !taffo.info !157, !taffo.initweight !61
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.info !158, !taffo.initweight !64

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %j.0 = phi i32 [ 0, %for.body15 ], [ %inc27, %for.inc26 ], !taffo.info !156, !taffo.initweight !45
  %cmp17 = icmp sle i32 %j.0, %i.1, !taffo.info !157, !taffo.initweight !61
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.info !158, !taffo.initweight !64

for.body19:                                       ; preds = %for.cond16
  %sub = sub nsw i32 0, %j.0, !taffo.info !182, !taffo.initweight !61, !taffo.constinfo !21
  %rem = srem i32 %sub, %n, !taffo.info !184, !taffo.initweight !64
  %conv20 = sitofp i32 %rem to float, !taffo.info !186, !taffo.initweight !171
  %conv21 = sitofp i32 %n to float, !taffo.info !155
  %div22 = fdiv float %conv20, %conv21, !taffo.info !188, !taffo.initweight !94
  %add23 = fadd float %div22, 1.000000e+00, !taffo.info !191, !taffo.initweight !94, !taffo.constinfo !193
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !194, !taffo.initweight !61
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i32 0, i32 %j.0, !taffo.info !194, !taffo.initweight !61
  store float %add23, float* %arrayidx25, align 4, !taffo.info !161, !taffo.initweight !64
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nsw i32 %j.0, 1, !taffo.info !164, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !195

for.end28:                                        ; preds = %for.cond16
  %add29 = add nsw i32 %i.1, 1, !taffo.info !164, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %j.1 = phi i32 [ %add29, %for.end28 ], [ %inc37, %for.inc36 ], !taffo.info !196, !taffo.initweight !45
  %cmp31 = icmp slt i32 %j.1, %n, !taffo.info !157, !taffo.initweight !61
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.info !158, !taffo.initweight !64

for.body33:                                       ; preds = %for.cond30
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !194, !taffo.initweight !61
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i32 0, i32 %j.1, !taffo.info !194, !taffo.initweight !61
  store float 0.000000e+00, float* %arrayidx35, align 4, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !162
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %inc37 = add nsw i32 %j.1, 1, !taffo.info !198, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !200

for.end38:                                        ; preds = %for.cond30
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.info !194, !taffo.initweight !61
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i32 0, i32 %i.1, !taffo.info !194, !taffo.initweight !61
  store float 1.000000e+00, float* %arrayidx40, align 4, !taffo.info !161, !taffo.initweight !64, !taffo.constinfo !201
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %inc42 = add nsw i32 %i.1, 1, !taffo.info !164, !taffo.initweight !61, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !202

for.end43:                                        ; preds = %for.cond12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %r.0 = phi i32 [ 0, %for.end43 ], [ %inc58, %for.inc57 ], !taffo.info !78
  %cmp45 = icmp slt i32 %r.0, %n, !taffo.info !87
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %s.0 = phi i32 [ 0, %for.body47 ], [ %inc55, %for.inc54 ], !taffo.info !78
  %cmp49 = icmp slt i32 %s.0, %n, !taffo.info !87
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.0, !taffo.info !46, !taffo.initweight !94
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %s.0, !taffo.info !46, !taffo.initweight !96
  store float 0.000000e+00, float* %arrayidx53, align 4, !taffo.info !161, !taffo.initweight !94, !taffo.constinfo !162
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %inc55 = add nsw i32 %s.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !203

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %r.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond44, !llvm.loop !204

for.end59:                                        ; preds = %for.cond44
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %t.0 = phi i32 [ 0, %for.end59 ], [ %inc86, %for.inc85 ], !taffo.info !78
  %cmp61 = icmp slt i32 %t.0, %n, !taffo.info !87
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %r.1 = phi i32 [ 0, %for.body63 ], [ %inc83, %for.inc82 ], !taffo.info !78
  %cmp65 = icmp slt i32 %r.1, %n, !taffo.info !87
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %s.1 = phi i32 [ 0, %for.body67 ], [ %inc80, %for.inc79 ], !taffo.info !78
  %cmp69 = icmp slt i32 %s.1, %n, !taffo.info !87
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.1, !taffo.info !42, !taffo.initweight !94
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %t.0, !taffo.info !42, !taffo.initweight !96
  %0 = load float, float* %arrayidx73, align 4, !taffo.info !42, !taffo.initweight !101
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %s.1, !taffo.info !42, !taffo.initweight !94
  %arrayidx75 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx74, i32 0, i32 %t.0, !taffo.info !42, !taffo.initweight !96
  %1 = load float, float* %arrayidx75, align 4, !taffo.info !42, !taffo.initweight !101
  %mul = fmul float %0, %1, !taffo.info !205, !taffo.initweight !118
  %arrayidx76 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.1, !taffo.info !46, !taffo.initweight !94
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %s.1, !taffo.info !46, !taffo.initweight !96
  %2 = load float, float* %arrayidx77, align 4, !taffo.info !46, !taffo.initweight !101
  %add78 = fadd float %2, %mul, !taffo.info !207, !taffo.initweight !118
  store float %add78, float* %arrayidx77, align 4, !taffo.info !67, !taffo.initweight !101
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %inc80 = add nsw i32 %s.1, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond68, !llvm.loop !209

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %r.1, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond64, !llvm.loop !210

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %t.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !211

for.end87:                                        ; preds = %for.cond60
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %r.2 = phi i32 [ 0, %for.end87 ], [ %inc104, %for.inc103 ], !taffo.info !78
  %cmp89 = icmp slt i32 %r.2, %n, !taffo.info !87
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %s.2 = phi i32 [ 0, %for.body91 ], [ %inc101, %for.inc100 ], !taffo.info !78
  %cmp93 = icmp slt i32 %s.2, %n, !taffo.info !87
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.2, !taffo.info !46, !taffo.initweight !94
  %arrayidx97 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i32 0, i32 %s.2, !taffo.info !46, !taffo.initweight !96
  %3 = load float, float* %arrayidx97, align 4, !taffo.info !46, !taffo.initweight !101
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.2, !taffo.info !42, !taffo.initweight !94
  %arrayidx99 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx98, i32 0, i32 %s.2, !taffo.info !42, !taffo.initweight !96
  store float %3, float* %arrayidx99, align 4, !taffo.info !60, !taffo.initweight !101
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %inc101 = add nsw i32 %s.2, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond92, !llvm.loop !212

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %inc104 = add nsw i32 %r.2, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond88, !llvm.loop !213

for.end105:                                       ; preds = %for.cond88
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !214 !taffo.funinfo !215 !taffo.sourceFunction !66 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !78
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !78
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !87
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !42, !taffo.initweight !96
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !42, !taffo.initweight !101
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !216, !taffo.initweight !118
  %conv = sitofp i32 %factor to float, !taffo.info !97
  %mul = fmul float %1, %conv, !taffo.info !218, !taffo.initweight !220
  %2 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !42, !taffo.initweight !96
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !42, !taffo.initweight !101
  store float %mul, float* %arrayidx6, align 4, !taffo.info !60, !taffo.initweight !118
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !221

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !222

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double -3.794700e-02, double 0x400FFCF893FAF428}
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
!28 = !{void (i32, float*, i32)* @scale_1d.1, void (i32, float*, i32)* @scale_1d.2, void (i32, float*, i32)* @scale_1d.1}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = !{void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.6}
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
!43 = !{!"fixp", i32 32, i32 27}
!44 = !{double 1.000000e-01, double 0x40305851DABE2718}
!45 = !{i32 0}
!46 = !{!43, !47, i1 false, i2 -1}
!47 = !{double 2.000000e+00, double 0x40305851DABE2718}
!48 = !{!49, !50, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 28}
!50 = !{double 8.050000e+00, double 9.000000e+00}
!51 = !{!52, !1, i1 false, i2 -1}
!52 = !{!"fixp", i32 -32, i32 28}
!53 = !{!"x"}
!54 = !{!49, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 8.050000e+00}
!56 = !{!43, i1 false, i1 false, i2 -1}
!57 = !{i32 1}
!58 = !{!49, i1 false, i1 false, i2 -1}
!59 = !{!52, i1 false, i1 false, i2 -1}
!60 = !{i1 false, !44, i1 false, i2 -1}
!61 = !{i32 2}
!62 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!63 = distinct !{null}
!64 = !{i32 3}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = !{void (i32, i32, float*, i32)* @scale_2d}
!67 = !{i1 false, !47, i1 false, i2 -1}
!68 = !{i1 false, !50, i1 false, i2 -1}
!69 = !{i1 false, i1 false, i1 false, i1 false}
!70 = !{void (i32, float*, i32)* @scale_1d}
!71 = !{i1 false, !1, i1 false, i2 -1}
!72 = !{i1 false, !55, i1 false, i2 -1}
!73 = !{i1 false}
!74 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!75 = distinct !{null}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 2.100000e+01}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 1.000000e+00}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+00, double 2.100000e+01}
!82 = distinct !{!82, !23}
!83 = !{i1 false, i1 false, i1 false}
!84 = !{i32 1, !85, i32 1, !0}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 2.000000e+01, double 2.000000e+01}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 1.000000e+00, double 1.000000e+00}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 0.000000e+00, double 0.000000e+00}
!91 = distinct !{!91, !23}
!92 = !{i32 -1, i32 2, i32 -1}
!93 = !{i32 1, !85, i32 1, !48, i32 1, !19}
!94 = !{i32 5}
!95 = !{!43, !50, i1 false, i2 -1}
!96 = !{i32 6}
!97 = !{!98, !20, i1 false, i2 1}
!98 = !{!"fixp", i32 32, i32 30}
!99 = !{!43, !100, i1 false, i2 -1}
!100 = !{double 1.610000e+01, double 1.800000e+01}
!101 = !{i32 7}
!102 = distinct !{!102, !23}
!103 = !{i32 1, !85, i32 1, !51, i32 1, !19}
!104 = !{!105, !1, i1 false, i2 -1}
!105 = !{!"fixp", i32 -32, i32 27}
!106 = !{!105, !107, i1 false, i2 -1}
!107 = !{double -7.589400e-02, double 0x401FFCF893FAF428}
!108 = distinct !{!108, !23}
!109 = !{i32 -1, i32 2, i32 2, i32 2, i32 2}
!110 = !{i32 1, !85, i32 1, !42, i32 1, !48, i32 1, !51, i32 1, !54}
!111 = !{!112, !113, i1 false, i2 -1}
!112 = !{!"fixp", i32 -32, i32 23}
!113 = !{double -2.000000e+02, double 2.000000e+02}
!114 = !{!115, !113, i1 false, i2 -1}
!115 = !{!"fixp", i32 -32, i32 22}
!116 = !{!115, !117, i1 false, i2 -1}
!117 = !{double 0x3F847AE147AE147C, double 0x4070B28B3B853C52}
!118 = !{i32 8}
!119 = !{!115, !120, i1 false, i2 -1}
!120 = !{double 0xC07D328B3B853C52, double 1.999900e+02}
!121 = distinct !{!121, !23}
!122 = !{!123, !124, i1 false, i2 -1}
!123 = !{!"fixp", i32 -32, i32 20}
!124 = !{double -2.000000e+03, double 2.000000e+03}
!125 = !{i1 false, !113, i1 false, i2 -1}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !23}
!130 = !{!131, !132, i1 false, i2 -1}
!131 = !{!"fixp", i32 32, i32 24}
!132 = !{double 0.000000e+00, double 0x40607278C41C2424}
!133 = !{!115, !134, i1 false, i2 -1}
!134 = !{double 0xC074B93C620E1212, double 2.000000e+02}
!135 = distinct !{!135, !23}
!136 = distinct !{!136, !23}
!137 = !{i1 false, !138, i1 false, i2 0}
!138 = !{double 1.900000e+01, double 1.900000e+01}
!139 = !{i1 false, !140, i1 false, i2 0}
!140 = !{double 1.800000e+01, double 1.900000e+01}
!141 = !{i1 false, !142, i1 false, i2 0}
!142 = !{double 2.000000e+01, double 2.100000e+01}
!143 = !{!115, !144, i1 false, i2 -1}
!144 = !{double 0xBFE3D909448FCA1B, double 0x405056C5C893154F}
!145 = !{!115, !146, i1 false, i2 -1}
!146 = !{double 0xC07095B17224C554, double 0x406913D909448FCA}
!147 = !{i1 false, !148, i1 false, i2 0}
!148 = !{double 2.100000e+01, double 2.100000e+01}
!149 = distinct !{!149, !23}
!150 = !{i1 false, !151, i1 false, i2 0}
!151 = !{double 1.800000e+01, double 1.800000e+01}
!152 = distinct !{!152, !23}
!153 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!154 = !{i32 1, !85, i32 1, !42, i32 1, !46, i32 1, !48, i32 1, !51, i32 1, !54}
!155 = !{!43, !86, i1 false, i2 1}
!156 = !{i1 false, !77, i1 false, i2 1}
!157 = !{i1 false, !79, i1 false, i2 1}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 0.000000e+00, double 2.000000e+01}
!160 = !{!52, !1, i1 false, i2 1}
!161 = !{i1 false, i1 false, i1 false, i2 1}
!162 = !{!89, i1 false}
!163 = !{!49, !55, i1 false, i2 1}
!164 = !{i1 false, !81, i1 false, i2 1}
!165 = !{!43, !81, i1 false, i2 1}
!166 = !{!98, !167, i1 false, i2 1}
!167 = !{double 5.000000e-02, double 1.050000e+00}
!168 = !{!169, !170, i1 false, i2 1}
!169 = !{!"fixp", i32 32, i32 29}
!170 = !{double 2.500000e-02, double 5.250000e-01}
!171 = !{i32 4}
!172 = !{i1 false, !19}
!173 = !{!169, !174, i1 false, i2 1}
!174 = !{double 4.025000e+00, double 4.525000e+00}
!175 = !{i1 false, !176}
!176 = !{i1 false, !177, i1 false, i2 0}
!177 = !{double 4.000000e+00, double 4.000000e+00}
!178 = !{!169, !179, i1 false, i2 1}
!179 = !{double 0x4010199980000000, double 0x40121999A0000000}
!180 = !{!49, !50, i1 false, i2 1}
!181 = distinct !{!181, !23}
!182 = !{i1 false, !183, i1 false, i2 1}
!183 = !{double -2.000000e+01, double 0.000000e+00}
!184 = !{i1 false, !185, i1 false, i2 1}
!185 = !{double -1.900000e+01, double 0.000000e+00}
!186 = !{!187, !185, i1 false, i2 1}
!187 = !{!"fixp", i32 -32, i32 26}
!188 = !{!189, !190, i1 false, i2 1}
!189 = !{!"fixp", i32 -32, i32 30}
!190 = !{double 0xBFEE666666666666, double 0.000000e+00}
!191 = !{!189, !192, i1 false, i2 1}
!192 = !{double 0x3FA99999999999A0, double 1.000000e+00}
!193 = !{i1 false, !87}
!194 = !{!43, !44, i1 false, i2 1}
!195 = distinct !{!195, !23}
!196 = !{i1 false, !197, i1 false, i2 1}
!197 = !{double 0.000000e+00, double 2.200000e+01}
!198 = !{i1 false, !199, i1 false, i2 1}
!199 = !{double 1.000000e+00, double 2.200000e+01}
!200 = distinct !{!200, !23}
!201 = !{!87, i1 false}
!202 = distinct !{!202, !23}
!203 = distinct !{!203, !23}
!204 = distinct !{!204, !23}
!205 = !{!206, !117, i1 false, i2 -1}
!206 = !{!"fixp", i32 32, i32 23}
!207 = !{!206, !208, i1 false, i2 -1}
!208 = !{double 2.010000e+00, double 0x4071B81059311EC4}
!209 = distinct !{!209, !23}
!210 = distinct !{!210, !23}
!211 = distinct !{!211, !23}
!212 = distinct !{!212, !23}
!213 = distinct !{!213, !23}
!214 = !{i32 -1, i32 -1, i32 3, i32 -1}
!215 = !{i32 1, !85, i32 1, !85, i32 1, !42, i32 1, !19}
!216 = !{!217, !44, i1 false, i2 -1}
!217 = !{!"fixp", i32 32, i32 26}
!218 = !{!217, !219, i1 false, i2 -1}
!219 = !{double 2.000000e-01, double 0x40405851DABE2718}
!220 = !{i32 9}
!221 = distinct !{!221, !23}
!222 = distinct !{!222, !23}
