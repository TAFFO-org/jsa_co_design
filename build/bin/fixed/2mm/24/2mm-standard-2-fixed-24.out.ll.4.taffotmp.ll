; ModuleID = './build/bin/fixed/2mm/24/2mm-standard-2-fixed-24.out.ll.3.taffotmp.ll'
source_filename = "./sources/2mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@D_float = dso_local global [8 x [14 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.11 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %tmp = alloca [8 x [10 x float]], align 4, !taffo.info !48, !taffo.initweight !45
  %A = alloca [8 x [12 x float]], align 4, !taffo.info !51, !taffo.initweight !45
  %B = alloca [12 x [10 x float]], align 4, !taffo.info !53, !taffo.initweight !45
  %C = alloca [10 x [14 x float]], align 4, !taffo.info !55, !taffo.initweight !45
  %D = alloca [8 x [14 x float]], align 4, !taffo.info !57, !taffo.initweight !45, !taffo.target !59
  %alpha1 = bitcast float* %alpha to i8*, !taffo.info !60, !taffo.initweight !61
  %beta2 = bitcast float* %beta to i8*, !taffo.info !60, !taffo.initweight !61
  %tmp3 = bitcast [8 x [10 x float]]* %tmp to i8*, !taffo.info !62, !taffo.initweight !61
  %A4 = bitcast [8 x [12 x float]]* %A to i8*, !taffo.info !60, !taffo.initweight !61
  %B5 = bitcast [12 x [10 x float]]* %B to i8*, !taffo.info !60, !taffo.initweight !61
  %C6 = bitcast [10 x [14 x float]]* %C to i8*, !taffo.info !60, !taffo.initweight !61
  %D7 = bitcast [8 x [14 x float]]* %D to i8*, !taffo.info !63, !taffo.initweight !61, !taffo.target !59
  %arraydecay = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !61
  %arraydecay8 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !53, !taffo.initweight !61
  %arraydecay9 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !55, !taffo.initweight !61
  %arraydecay10 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.info !57, !taffo.initweight !61, !taffo.target !59
  %arraydecay11 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.info !48, !taffo.initweight !61
  call void @init_array.4(i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %arraydecay, [10 x float]* noundef %arraydecay8, [14 x float]* noundef %arraydecay9, [14 x float]* noundef %arraydecay10, [10 x float]* noundef %arraydecay11), !taffo.info !64, !taffo.initweight !61, !taffo.constinfo !65, !taffo.originalCall !66
  call void @scale_scalar.1(float* noundef %alpha, i32 noundef 2), !taffo.info !64, !taffo.initweight !61, !taffo.constinfo !67, !taffo.originalCall !68
  call void @scale_scalar.1(float* noundef %beta, i32 noundef 2), !taffo.info !69, !taffo.initweight !61, !taffo.constinfo !67, !taffo.originalCall !68
  %arraydecay12 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !61
  %0 = bitcast [12 x float]* %arraydecay12 to float*, !taffo.info !51, !taffo.initweight !70
  call void @scale_2d.6(i32 noundef 8, i32 noundef 12, float* noundef %0, i32 noundef 2), !taffo.info !71, !taffo.initweight !72, !taffo.constinfo !73, !taffo.originalCall !74
  %arraydecay13 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !53, !taffo.initweight !61
  %1 = bitcast [10 x float]* %arraydecay13 to float*, !taffo.info !53, !taffo.initweight !70
  call void @scale_2d.6(i32 noundef 12, i32 noundef 10, float* noundef %1, i32 noundef 2), !taffo.info !75, !taffo.initweight !72, !taffo.constinfo !73, !taffo.originalCall !74
  %arraydecay14 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !55, !taffo.initweight !61
  %2 = bitcast [14 x float]* %arraydecay14 to float*, !taffo.info !55, !taffo.initweight !70
  call void @scale_2d.6(i32 noundef 10, i32 noundef 14, float* noundef %2, i32 noundef 2), !taffo.info !76, !taffo.initweight !72, !taffo.constinfo !73, !taffo.originalCall !74
  %arraydecay15 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.info !57, !taffo.initweight !61, !taffo.target !59
  %3 = bitcast [14 x float]* %arraydecay15 to float*, !taffo.info !57, !taffo.initweight !70, !taffo.target !59
  call void @scale_2d.9(i32 noundef 8, i32 noundef 14, float* noundef %3, i32 noundef 2), !taffo.info !77, !taffo.initweight !72, !taffo.constinfo !73, !taffo.target !59, !taffo.originalCall !74
  %arraydecay16 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.info !48, !taffo.initweight !61
  %4 = bitcast [10 x float]* %arraydecay16 to float*, !taffo.info !48, !taffo.initweight !70
  call void @scale_2d.5(i32 noundef 8, i32 noundef 10, float* noundef %4, i32 noundef 2), !taffo.info !78, !taffo.initweight !72, !taffo.constinfo !73, !taffo.originalCall !74
  call void @timer_start(), !taffo.constinfo !79
  %5 = load float, float* %alpha, align 4, !taffo.info !42, !taffo.initweight !61
  %6 = load float, float* %beta, align 4, !taffo.info !46, !taffo.initweight !61
  %arraydecay17 = getelementptr inbounds [8 x [10 x float]], [8 x [10 x float]]* %tmp, i32 0, i32 0, !taffo.info !48, !taffo.initweight !61
  %arraydecay18 = getelementptr inbounds [8 x [12 x float]], [8 x [12 x float]]* %A, i32 0, i32 0, !taffo.info !51, !taffo.initweight !61
  %arraydecay19 = getelementptr inbounds [12 x [10 x float]], [12 x [10 x float]]* %B, i32 0, i32 0, !taffo.info !53, !taffo.initweight !61
  %arraydecay20 = getelementptr inbounds [10 x [14 x float]], [10 x [14 x float]]* %C, i32 0, i32 0, !taffo.info !55, !taffo.initweight !61
  %arraydecay21 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 0, !taffo.info !57, !taffo.initweight !61, !taffo.target !59
  call void @kernel_2mm.3(i32 noundef 8, i32 noundef 10, i32 noundef 12, i32 noundef 14, float noundef %5, float noundef %6, [10 x float]* noundef %arraydecay17, [12 x float]* noundef %arraydecay18, [10 x float]* noundef %arraydecay19, [14 x float]* noundef %arraydecay20, [14 x float]* noundef %arraydecay21), !taffo.info !64, !taffo.initweight !70, !taffo.constinfo !65, !taffo.originalCall !80
  call void @timer_stop(), !taffo.constinfo !79
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28 ], !taffo.info !81
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !83
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !85
  %cmp23 = icmp slt i32 %j.0, 14, !taffo.info !83
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %arrayidx = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* %D, i32 0, i32 %i.0, !taffo.info !57, !taffo.initweight !61, !taffo.target !59
  %arrayidx25 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !57, !taffo.initweight !70, !taffo.target !59
  %7 = load float, float* %arrayidx25, align 4, !taffo.info !57, !taffo.initweight !72, !taffo.target !59
  %arrayidx26 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.info !0
  store float %7, float* %arrayidx27, align 4, !taffo.info !77, !taffo.initweight !87, !taffo.target !59
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !90

for.end:                                          ; preds = %for.cond22
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %inc29 = add nsw i32 %i.0, 1, !taffo.info !91, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !93

for.end30:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 8, i32 noundef 14, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0)), !taffo.constinfo !94
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !27 !taffo.funinfo !95 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !83
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !100
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !83
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !102
  %add = add nsw i32 %mul, %j.0, !taffo.info !102
  %rem = srem i32 %add, 20, !taffo.info !102, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !100
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !taffo.constinfo !67
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %conv), !taffo.constinfo !94
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !104

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !105

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1(float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !106 !taffo.funinfo !107 !taffo.sourceFunction !68 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.3(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float noundef %alpha, float noundef %beta, [10 x float]* noundef %tmp, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D) #0 !taffo.initweight !108 !taffo.funinfo !109 !taffo.sourceFunction !80 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !83
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !100
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ], !taffo.info !83
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !100
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0, !taffo.info !48, !taffo.initweight !112
  %arrayidx4 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !113
  store float 0.000000e+00, float* %arrayidx4, align 4, !taffo.info !114, !taffo.initweight !112, !taffo.constinfo !115
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !83
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !100
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8 = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.info !51, !taffo.initweight !112
  %arrayidx9 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx8, i32 0, i32 %k.0, !taffo.info !51, !taffo.initweight !113
  %0 = load float, float* %arrayidx9, align 4, !taffo.info !51, !taffo.initweight !116
  %mul = fmul float %alpha, %0, !taffo.info !117, !taffo.initweight !112
  %arrayidx10 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %k.0, !taffo.info !53, !taffo.initweight !112
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx10, i32 0, i32 %j.0, !taffo.info !53, !taffo.initweight !113
  %1 = load float, float* %arrayidx11, align 4, !taffo.info !120, !taffo.initweight !116
  %mul12 = fmul float %mul, %1, !taffo.info !121, !taffo.initweight !113
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.0, !taffo.info !48, !taffo.initweight !112
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !48, !taffo.initweight !113
  %2 = load float, float* %arrayidx14, align 4, !taffo.info !48, !taffo.initweight !116
  %add = fadd float %2, %mul12, !taffo.info !123, !taffo.initweight !116
  store float %add, float* %arrayidx14, align 4, !taffo.info !78, !taffo.initweight !116
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !125

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !126

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !127

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ], !taffo.info !83
  %cmp22 = icmp slt i32 %i.1, %ni, !taffo.info !100
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ], !taffo.info !83
  %cmp25 = icmp slt i32 %j.1, %nl, !taffo.info !100
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.info !57, !taffo.initweight !112
  %arrayidx28 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx27, i32 0, i32 %j.1, !taffo.info !57, !taffo.initweight !113
  %3 = load float, float* %arrayidx28, align 4, !taffo.info !57, !taffo.initweight !116
  %mul29 = fmul float %3, %beta, !taffo.info !128, !taffo.initweight !112
  store float %mul29, float* %arrayidx28, align 4, !taffo.info !69, !taffo.initweight !113
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ], !taffo.info !83
  %cmp31 = icmp slt i32 %k.1, %nj, !taffo.info !100
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.1, !taffo.info !48, !taffo.initweight !112
  %arrayidx34 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx33, i32 0, i32 %k.1, !taffo.info !48, !taffo.initweight !113
  %4 = load float, float* %arrayidx34, align 4, !taffo.info !130, !taffo.initweight !116
  %arrayidx35 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %k.1, !taffo.info !55, !taffo.initweight !112
  %arrayidx36 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx35, i32 0, i32 %j.1, !taffo.info !55, !taffo.initweight !113
  %5 = load float, float* %arrayidx36, align 4, !taffo.info !55, !taffo.initweight !116
  %mul37 = fmul float %4, %5, !taffo.info !132, !taffo.initweight !134
  %arrayidx38 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.1, !taffo.info !57, !taffo.initweight !112
  %arrayidx39 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx38, i32 0, i32 %j.1, !taffo.info !57, !taffo.initweight !113
  %6 = load float, float* %arrayidx39, align 4, !taffo.info !57, !taffo.initweight !116
  %add40 = fadd float %6, %mul37, !taffo.info !135, !taffo.initweight !134
  store float %add40, float* %arrayidx39, align 4, !taffo.info !77, !taffo.initweight !116
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !137

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !138

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond21, !llvm.loop !139

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, float* noundef %alpha, float* noundef %beta, [12 x float]* noundef %A, [10 x float]* noundef %B, [14 x float]* noundef %C, [14 x float]* noundef %D, [10 x float]* noundef %tmp) #0 !taffo.initweight !140 !taffo.funinfo !141 !taffo.sourceFunction !66 {
entry:
  store float 1.500000e+00, float* %alpha, align 4, !taffo.info !64, !taffo.initweight !87, !taffo.constinfo !142
  store float 0x3FF3333340000000, float* %beta, align 4, !taffo.info !69, !taffo.initweight !87, !taffo.constinfo !144
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !147, !taffo.initweight !45
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !147, !taffo.initweight !72

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !150, !taffo.initweight !45
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !150, !taffo.initweight !72

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !152, !taffo.initweight !70
  %add = add nsw i32 %mul, 1, !taffo.info !154, !taffo.initweight !72, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !156, !taffo.initweight !87
  %conv = sitofp i32 %rem to float, !taffo.info !158, !taffo.initweight !112
  %conv6 = sitofp i32 %ni to float, !taffo.info !159
  %div = fdiv float %conv, %conv6, !taffo.info !161, !taffo.initweight !113
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %A, i32 %i.0, !taffo.info !163, !taffo.initweight !70
  %arrayidx7 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !163, !taffo.initweight !70
  store float %div, float* %arrayidx7, align 4, !taffo.info !114, !taffo.initweight !72
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !164, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !166

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !167, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !169

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !147, !taffo.initweight !45
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !147, !taffo.initweight !72

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !150, !taffo.initweight !45
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !150, !taffo.initweight !72

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !164, !taffo.initweight !70, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !170, !taffo.initweight !70
  %rem21 = srem i32 %mul20, %nj, !taffo.info !172, !taffo.initweight !72
  %conv22 = sitofp i32 %rem21 to float, !taffo.info !173, !taffo.initweight !87
  %conv23 = sitofp i32 %nj to float, !taffo.info !174
  %div24 = fdiv float %conv22, %conv23, !taffo.info !175, !taffo.initweight !112
  %arrayidx25 = getelementptr inbounds [10 x float], [10 x float]* %B, i32 %i.1, !taffo.info !178, !taffo.initweight !70
  %arrayidx26 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx25, i32 0, i32 %j.1, !taffo.info !178, !taffo.initweight !70
  store float %div24, float* %arrayidx26, align 4, !taffo.info !114, !taffo.initweight !72
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !164, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !179

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !167, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !180

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.info !147, !taffo.initweight !45
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.info !147, !taffo.initweight !72

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.info !150, !taffo.initweight !45
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.info !150, !taffo.initweight !72

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.info !181, !taffo.initweight !70, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !183, !taffo.initweight !70
  %add43 = add nsw i32 %mul42, 1, !taffo.info !185, !taffo.initweight !72, !taffo.constinfo !21
  %rem44 = srem i32 %add43, %nl, !taffo.info !187, !taffo.initweight !87
  %conv45 = sitofp i32 %rem44 to float, !taffo.info !189, !taffo.initweight !112
  %conv46 = sitofp i32 %nl to float, !taffo.info !190
  %div47 = fdiv float %conv45, %conv46, !taffo.info !191, !taffo.initweight !113
  %arrayidx48 = getelementptr inbounds [14 x float], [14 x float]* %C, i32 %i.2, !taffo.info !193, !taffo.initweight !70
  %arrayidx49 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx48, i32 0, i32 %j.2, !taffo.info !193, !taffo.initweight !70
  store float %div47, float* %arrayidx49, align 4, !taffo.info !114, !taffo.initweight !72
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.info !164, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !194

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.info !167, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !195

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.info !147, !taffo.initweight !45
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.info !147, !taffo.initweight !72

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.info !150, !taffo.initweight !45
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.info !150, !taffo.initweight !72

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.info !196, !taffo.initweight !70, !taffo.constinfo !21
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.info !198, !taffo.initweight !70
  %rem66 = srem i32 %mul65, %nk, !taffo.info !200, !taffo.initweight !72
  %conv67 = sitofp i32 %rem66 to float, !taffo.info !202, !taffo.initweight !87
  %conv68 = sitofp i32 %nk to float, !taffo.info !203
  %div69 = fdiv float %conv67, %conv68, !taffo.info !204, !taffo.initweight !112
  %arrayidx70 = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.3, !taffo.info !206, !taffo.initweight !70
  %arrayidx71 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx70, i32 0, i32 %j.3, !taffo.info !206, !taffo.initweight !70
  store float %div69, float* %arrayidx71, align 4, !taffo.info !114, !taffo.initweight !72
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.info !164, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !207

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.info !167, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !208

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.info !147, !taffo.initweight !45
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.info !147, !taffo.initweight !72

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.info !150, !taffo.initweight !45
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.info !149, !taffo.initweight !70
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.info !150, !taffo.initweight !72

for.body85:                                       ; preds = %for.cond82
  %arrayidx86 = getelementptr inbounds [10 x float], [10 x float]* %tmp, i32 %i.4, !taffo.info !209, !taffo.initweight !70
  %arrayidx87 = getelementptr inbounds [10 x float], [10 x float]* %arrayidx86, i32 0, i32 %j.4, !taffo.info !209, !taffo.initweight !70
  store float 0.000000e+00, float* %arrayidx87, align 4, !taffo.info !114, !taffo.initweight !72, !taffo.constinfo !115
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.info !164, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond82, !llvm.loop !210

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.info !167, !taffo.initweight !70, !taffo.constinfo !21
  br label %for.cond78, !llvm.loop !211

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !212 !taffo.funinfo !213 !taffo.sourceFunction !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !83
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !100
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !83
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !48, !taffo.initweight !113
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !48, !taffo.initweight !116
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !130, !taffo.initweight !134
  %conv = sitofp i32 %factor to float, !taffo.info !214
  %mul = fmul float %1, %conv, !taffo.info !215, !taffo.initweight !217
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !48, !taffo.initweight !113
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !48, !taffo.initweight !116
  store float %mul, float* %arrayidx6, align 4, !taffo.info !78, !taffo.initweight !134
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !218

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !219

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !212 !taffo.funinfo !220 !taffo.sourceFunction !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !83
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !100
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !83
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !51, !taffo.initweight !113
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !51, !taffo.initweight !116
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !221, !taffo.initweight !134
  %conv = sitofp i32 %factor to float, !taffo.info !222
  %mul = fmul float %1, %conv, !taffo.info !223, !taffo.initweight !217
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !51, !taffo.initweight !113
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !51, !taffo.initweight !116
  store float %mul, float* %arrayidx6, align 4, !taffo.info !71, !taffo.initweight !134
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !225

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !226

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !212 !taffo.funinfo !227 !taffo.sourceFunction !74 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !83
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !100
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !83
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx = getelementptr inbounds float, float* %val, i32 %0, !taffo.info !57, !taffo.initweight !113
  %arrayidx4 = getelementptr inbounds float, float* %arrayidx, i32 %j.0, !taffo.info !57, !taffo.initweight !116
  %1 = load float, float* %arrayidx4, align 4, !taffo.info !228, !taffo.initweight !134
  %conv = sitofp i32 %factor to float, !taffo.info !214
  %mul = fmul float %1, %conv, !taffo.info !230, !taffo.initweight !217
  %2 = mul nsw i32 %i.0, %m, !taffo.info !102
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2, !taffo.info !57, !taffo.initweight !113
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0, !taffo.info !57, !taffo.initweight !116
  store float %mul, float* %arrayidx6, align 4, !taffo.info !77, !taffo.initweight !134
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !232

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !233

for.end9:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x40632E66601BC98A}
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
!32 = !{void (i32, i32, float*, i32)* @scale_2d.5, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.6, void (i32, i32, float*, i32)* @scale_2d.9}
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
!48 = !{!49, !50, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 27}
!50 = !{double 0.000000e+00, double 0x40327333226C3B92}
!51 = !{!43, !52, i1 false, i2 -1}
!52 = !{double 0.000000e+00, double 1.750000e+00}
!53 = !{!43, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 1.800000e+00}
!55 = !{!43, !56, i1 false, i2 -1}
!56 = !{double 0.000000e+00, double 0x3FFDB6DB940FECDD}
!57 = !{!58, !1, i1 false, i2 -1}
!58 = !{!"fixp", i32 32, i32 24}
!59 = !{!"D"}
!60 = !{!43, i1 false, i1 false, i2 -1}
!61 = !{i32 1}
!62 = !{!49, i1 false, i1 false, i2 -1}
!63 = !{!58, i1 false, i1 false, i2 -1}
!64 = !{i1 false, !44, i1 false, i2 -1}
!65 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!66 = distinct !{null}
!67 = !{i1 false, i1 false, i1 false}
!68 = !{void (float*, i32)* @scale_scalar}
!69 = !{i1 false, !47, i1 false, i2 -1}
!70 = !{i32 2}
!71 = !{i1 false, !52, i1 false, i2 -1}
!72 = !{i32 3}
!73 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!74 = !{void (i32, i32, float*, i32)* @scale_2d}
!75 = !{i1 false, !54, i1 false, i2 -1}
!76 = !{i1 false, !56, i1 false, i2 -1}
!77 = !{i1 false, !1, i1 false, i2 -1}
!78 = !{i1 false, !50, i1 false, i2 -1}
!79 = !{i1 false}
!80 = distinct !{null}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0.000000e+00, double 9.000000e+00}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 0.000000e+00, double 1.000000e+00}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 0.000000e+00, double 1.350000e+02}
!87 = !{i32 4}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.000000e+00, double 1.350000e+02}
!90 = distinct !{!90, !23}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 1.000000e+00, double 9.000000e+00}
!93 = distinct !{!93, !23}
!94 = !{i1 false, i1 false, i1 false, i1 false}
!95 = !{i32 1, !96, i32 1, !98, i32 1, !0}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 8.000000e+00, double 8.000000e+00}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 1.400000e+01, double 1.400000e+01}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 1.000000e+00, double 1.000000e+00}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 0.000000e+00, double 0.000000e+00}
!104 = distinct !{!104, !23}
!105 = distinct !{!105, !23}
!106 = !{i32 1, i32 -1}
!107 = !{i32 1, !42, i32 1, !19}
!108 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!109 = !{i32 1, !96, i32 1, !16, i32 1, !110, i32 1, !98, i32 1, !42, i32 1, !46, i32 1, !48, i32 1, !51, i32 1, !53, i32 1, !55, i32 1, !57}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 1.200000e+01, double 1.200000e+01}
!112 = !{i32 5}
!113 = !{i32 6}
!114 = !{i1 false, i1 false, i1 false, i2 1}
!115 = !{!102, i1 false}
!116 = !{i32 7}
!117 = !{!118, !119, i1 false, i2 -1}
!118 = !{!"fixp", i32 32, i32 29}
!119 = !{double 0.000000e+00, double 2.625000e+00}
!120 = !{!118, !54, i1 false, i2 -1}
!121 = !{!49, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 0x4012E66666666667}
!123 = !{!49, !124, i1 false, i2 -1}
!124 = !{double 0.000000e+00, double 0x40372CCCBC05D52C}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
!128 = !{!58, !129, i1 false, i2 -1}
!129 = !{double 0.000000e+00, double 0x4067047AD9BAF1D9}
!130 = !{!131, !50, i1 false, i2 -1}
!131 = !{!"fixp", i32 32, i32 26}
!132 = !{!58, !133, i1 false, i2 -1}
!133 = !{double 0.000000e+00, double 0x404121D423C9CC34}
!134 = !{i32 8}
!135 = !{!58, !136, i1 false, i2 -1}
!136 = !{double 0.000000e+00, double 0x406776DB690E3C97}
!137 = distinct !{!137, !23}
!138 = distinct !{!138, !23}
!139 = distinct !{!139, !23}
!140 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!141 = !{i32 1, !96, i32 1, !16, i32 1, !110, i32 1, !98, i32 1, !42, i32 1, !46, i32 1, !51, i32 1, !53, i32 1, !55, i32 1, !57, i32 1, !48}
!142 = !{!143, i1 false}
!143 = !{i1 false, !44, i1 false, i2 0}
!144 = !{!145, i1 false}
!145 = !{i1 false, !146, i1 false, i2 0}
!146 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!147 = !{i1 false, !148, i1 false, i2 -1}
!148 = !{double 0.000000e+00, double 1.200000e+01}
!149 = !{i1 false, !84, i1 false, i2 -1}
!150 = !{i1 false, !151, i1 false, i2 -1}
!151 = !{double 0.000000e+00, double 1.400000e+01}
!152 = !{i1 false, !153, i1 false, i2 -1}
!153 = !{double 0.000000e+00, double 1.680000e+02}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double 1.000000e+00, double 1.690000e+02}
!156 = !{i1 false, !157, i1 false, i2 -1}
!157 = !{double 0.000000e+00, double 7.000000e+00}
!158 = !{!118, !157, i1 false, i2 -1}
!159 = !{!160, !97, i1 false, i2 1}
!160 = !{!"fixp", i32 32, i32 28}
!161 = !{!118, !162, i1 false, i2 -1}
!162 = !{double 0.000000e+00, double 8.750000e-01}
!163 = !{!43, !52, i1 false, i2 1}
!164 = !{i1 false, !165, i1 false, i2 -1}
!165 = !{double 1.000000e+00, double 1.500000e+01}
!166 = distinct !{!166, !23}
!167 = !{i1 false, !168, i1 false, i2 -1}
!168 = !{double 1.000000e+00, double 1.300000e+01}
!169 = distinct !{!169, !23}
!170 = !{i1 false, !171, i1 false, i2 -1}
!171 = !{double 0.000000e+00, double 1.800000e+02}
!172 = !{i1 false, !82, i1 false, i2 -1}
!173 = !{!160, !82, i1 false, i2 -1}
!174 = !{!160, !17, i1 false, i2 1}
!175 = !{!176, !177, i1 false, i2 -1}
!176 = !{!"fixp", i32 32, i32 31}
!177 = !{double 0.000000e+00, double 9.000000e-01}
!178 = !{!43, !54, i1 false, i2 1}
!179 = distinct !{!179, !23}
!180 = distinct !{!180, !23}
!181 = !{i1 false, !182, i1 false, i2 -1}
!182 = !{double 3.000000e+00, double 1.700000e+01}
!183 = !{i1 false, !184, i1 false, i2 -1}
!184 = !{double 0.000000e+00, double 2.040000e+02}
!185 = !{i1 false, !186, i1 false, i2 -1}
!186 = !{double 1.000000e+00, double 2.050000e+02}
!187 = !{i1 false, !188, i1 false, i2 -1}
!188 = !{double 0.000000e+00, double 1.300000e+01}
!189 = !{!160, !188, i1 false, i2 -1}
!190 = !{!160, !99, i1 false, i2 1}
!191 = !{!176, !192, i1 false, i2 -1}
!192 = !{double 0.000000e+00, double 0x3FEDB6DB6DB6DB6E}
!193 = !{!43, !56, i1 false, i2 1}
!194 = distinct !{!194, !23}
!195 = distinct !{!195, !23}
!196 = !{i1 false, !197, i1 false, i2 -1}
!197 = !{double 2.000000e+00, double 1.600000e+01}
!198 = !{i1 false, !199, i1 false, i2 -1}
!199 = !{double 0.000000e+00, double 1.920000e+02}
!200 = !{i1 false, !201, i1 false, i2 -1}
!201 = !{double 0.000000e+00, double 1.100000e+01}
!202 = !{!160, !201, i1 false, i2 -1}
!203 = !{!160, !111, i1 false, i2 1}
!204 = !{!176, !205, i1 false, i2 -1}
!205 = !{double 0.000000e+00, double 0x3FED555555555555}
!206 = !{!58, !1, i1 false, i2 1}
!207 = distinct !{!207, !23}
!208 = distinct !{!208, !23}
!209 = !{!49, !50, i1 false, i2 1}
!210 = distinct !{!210, !23}
!211 = distinct !{!211, !23}
!212 = !{i32 -1, i32 -1, i32 3, i32 -1}
!213 = !{i32 1, !96, i32 1, !16, i32 1, !48, i32 1, !19}
!214 = !{!43, !20, i1 false, i2 1}
!215 = !{!131, !216, i1 false, i2 -1}
!216 = !{double 0.000000e+00, double 0x40427333226C3B92}
!217 = !{i32 9}
!218 = distinct !{!218, !23}
!219 = distinct !{!219, !23}
!220 = !{i32 1, !96, i32 1, !110, i32 1, !51, i32 1, !19}
!221 = !{!118, !52, i1 false, i2 -1}
!222 = !{!118, !20, i1 false, i2 1}
!223 = !{!118, !224, i1 false, i2 -1}
!224 = !{double 0.000000e+00, double 3.500000e+00}
!225 = distinct !{!225, !23}
!226 = distinct !{!226, !23}
!227 = !{i32 1, !96, i32 1, !98, i32 1, !57, i32 1, !19}
!228 = !{!229, !1, i1 false, i2 -1}
!229 = !{!"fixp", i32 32, i32 23}
!230 = !{!229, !231, i1 false, i2 -1}
!231 = !{double 0.000000e+00, double 0x40732E66601BC98A}
!232 = distinct !{!232, !23}
!233 = distinct !{!233, !23}
