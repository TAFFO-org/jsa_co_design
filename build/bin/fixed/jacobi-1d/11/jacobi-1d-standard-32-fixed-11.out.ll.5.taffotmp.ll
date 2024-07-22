; ModuleID = './build/bin/fixed/jacobi-1d/11/jacobi-1d-standard-32-fixed-11.out.ll.4.taffotmp.ll'
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
  %A.u6_26fixp = alloca [15 x i32], align 4, !taffo.info !41, !taffo.target !44
  %B.u6_26fixp = alloca [15 x i32], align 4, !taffo.info !45
  %arraydecay.u6_26fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u6_26fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %arraydecay3.u6_26fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u6_26fixp, i32 0, i32 0, !taffo.info !45
  call void @init_array.4_fixp(i32 15, i32* %arraydecay.u6_26fixp, i32* %arraydecay3.u6_26fixp), !taffo.info !47, !taffo.constinfo !48, !taffo.target !44
  %arraydecay4.u6_26fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u6_26fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  call void @scale_1d.1_fixp(i32 15, i32* %arraydecay4.u6_26fixp, i32 32), !taffo.info !47, !taffo.constinfo !48, !taffo.target !44
  %arraydecay5.u6_26fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u6_26fixp, i32 0, i32 0, !taffo.info !45
  call void @scale_1d.1_fixp(i32 15, i32* %arraydecay5.u6_26fixp, i32 32), !taffo.info !49, !taffo.constinfo !48
  call void @timer_start(), !taffo.constinfo !50
  %arraydecay6.u6_26fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u6_26fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %arraydecay7.u6_26fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u6_26fixp, i32 0, i32 0, !taffo.info !45
  call void @kernel_jacobi_1d.2_fixp(i32 10, i32 15, i32* %arraydecay6.u6_26fixp, i32* %arraydecay7.u6_26fixp), !taffo.info !47, !taffo.constinfo !51, !taffo.target !44
  call void @timer_stop(), !taffo.constinfo !50
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u6_26fixp, i32 0, i32 %i.0, !taffo.info !41, !taffo.target !44
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !41, !taffo.target !44
  %0 = uitofp i32 %u6_26fixp to float, !taffo.info !41, !taffo.target !44
  %1 = fdiv float %0, 0x4190000000000000, !taffo.info !41, !taffo.target !44
  %arrayidx8 = getelementptr inbounds [15 x float], [15 x float]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx8, align 4, !taffo.info !47, !taffo.target !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !56, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 15, float* noundef getelementptr inbounds ([15 x float], [15 x float]* @A_float, i32 0, i32 0)), !taffo.constinfo !59
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %A) #0 !taffo.initweight !24 !taffo.funinfo !60 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !65, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !63
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !59
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %A, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !48
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !68 !taffo.funinfo !69 !taffo.sourceFunction !72 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !41
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !41
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !73
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !41
  %1 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !73
  %2 = ashr i32 %0, 5, !taffo.info !41
  %3 = ashr i32 %1, 5, !taffo.info !73
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 20), !taffo.info !74
  %mul.u11_21fixp = shl i32 %4, 1, !taffo.info !77
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !41
  %5 = shl i32 %mul.u11_21fixp, 5, !taffo.info !77
  store i32 %5, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !47
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.2_fixp(i32 noundef %tsteps, i32 noundef %n, i32* noundef %A.u6_26fixp, i32* noundef %B.u6_26fixp) #0 !taffo.initweight !80 !taffo.funinfo !81 !taffo.sourceFunction !82 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ], !taffo.info !54
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ], !taffo.info !83
  %sub = sub nsw i32 %n, 1, !taffo.info !85, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !63
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !21
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %A.u6_26fixp, i32 %sub4, !taffo.info !41
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !87
  %arrayidx5.u6_26fixp = getelementptr inbounds i32, i32* %A.u6_26fixp, i32 %i.0, !taffo.info !41
  %u6_26fixp1 = load i32, i32* %arrayidx5.u6_26fixp, align 4, !taffo.info !87
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !87
  %1 = lshr i32 %u6_26fixp1, 1, !taffo.info !87
  %add.u7_25fixp = add i32 %0, %1, !taffo.info !89
  %add6 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx7.u6_26fixp = getelementptr inbounds i32, i32* %A.u6_26fixp, i32 %add6, !taffo.info !41
  %u6_26fixp2 = load i32, i32* %arrayidx7.u6_26fixp, align 4, !taffo.info !87
  %2 = lshr i32 %u6_26fixp2, 1, !taffo.info !87
  %add8.u7_25fixp = add i32 %add.u7_25fixp, %2, !taffo.info !91
  %3 = lshr i32 715820724, 1
  %4 = lshr i32 %add8.u7_25fixp, 1, !taffo.info !91
  %5 = ashr i32 %3, 6
  %6 = call i32 @llvm.smul.fix.i32(i32 %5, i32 %4, i32 24), !taffo.info !93
  %mul.u7_25fixp = shl i32 %6, 1, !taffo.info !96, !taffo.constinfo !97
  %conv9.u6_26fixp = shl i32 %mul.u7_25fixp, 1, !taffo.info !100, !taffo.constinfo !97
  %arrayidx10.u6_26fixp = getelementptr inbounds i32, i32* %B.u6_26fixp, i32 %i.0, !taffo.info !45
  store i32 %conv9.u6_26fixp, i32* %arrayidx10.u6_26fixp, align 4, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !102

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !83
  %sub12 = sub nsw i32 %n, 1, !taffo.info !85, !taffo.constinfo !21
  %cmp13 = icmp slt i32 %i.1, %sub12, !taffo.info !63
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %sub16 = sub nsw i32 %i.1, 1, !taffo.info !65, !taffo.constinfo !21
  %arrayidx17.u6_26fixp = getelementptr inbounds i32, i32* %B.u6_26fixp, i32 %sub16, !taffo.info !45
  %u6_26fixp3 = load i32, i32* %arrayidx17.u6_26fixp, align 4, !taffo.info !103
  %arrayidx18.u6_26fixp = getelementptr inbounds i32, i32* %B.u6_26fixp, i32 %i.1, !taffo.info !45
  %u6_26fixp4 = load i32, i32* %arrayidx18.u6_26fixp, align 4, !taffo.info !103
  %7 = lshr i32 %u6_26fixp3, 1, !taffo.info !103
  %8 = lshr i32 %u6_26fixp4, 1, !taffo.info !103
  %add19.u7_25fixp = add i32 %7, %8, !taffo.info !104
  %add20 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx21.u6_26fixp = getelementptr inbounds i32, i32* %B.u6_26fixp, i32 %add20, !taffo.info !45
  %u6_26fixp5 = load i32, i32* %arrayidx21.u6_26fixp, align 4, !taffo.info !103
  %9 = lshr i32 %u6_26fixp5, 1, !taffo.info !103
  %add22.u7_25fixp = add i32 %add19.u7_25fixp, %9, !taffo.info !106
  %10 = lshr i32 715820724, 1
  %11 = lshr i32 %add22.u7_25fixp, 1, !taffo.info !106
  %12 = ashr i32 %10, 6
  %13 = call i32 @llvm.smul.fix.i32(i32 %12, i32 %11, i32 24), !taffo.info !108
  %mul24.u7_25fixp = shl i32 %13, 1, !taffo.info !110, !taffo.constinfo !97
  %conv25.u6_26fixp = shl i32 %mul24.u7_25fixp, 1, !taffo.info !111, !taffo.constinfo !97
  %arrayidx26.u6_26fixp = getelementptr inbounds i32, i32* %A.u6_26fixp, i32 %i.1, !taffo.info !41
  store i32 %conv25.u6_26fixp, i32* %arrayidx26.u6_26fixp, align 4, !taffo.info !47
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !113

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %t.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !114

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %n, i32* noundef %A.u6_26fixp, i32* noundef %B.u6_26fixp) #0 !taffo.initweight !115 !taffo.funinfo !116 !taffo.sourceFunction !117 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !118, !taffo.initweight !120
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !121, !taffo.initweight !122
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !118, !taffo.initweight !123

for.body:                                         ; preds = %for.cond
  %conv.s6_26fixp = shl i32 %i.0, 26, !taffo.info !124
  %0 = lshr i32 -2147483648, 4
  %add.s6_26fixp = add i32 %conv.s6_26fixp, %0, !taffo.info !126, !taffo.constinfo !128
  %conv2.s5_27fixp = shl i32 %n, 27, !taffo.info !129
  %1 = ashr i32 %conv2.s5_27fixp, 1, !taffo.info !129
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %add.s6_26fixp, i32 %1, i32 26), !taffo.info !131
  %div.s5_27fixp = shl i32 %2, 1, !taffo.info !133
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %A.u6_26fixp, i32 %i.0, !taffo.info !134
  %3 = ashr i32 %div.s5_27fixp, 1, !taffo.info !133
  store i32 %3, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !135
  %conv3.s6_26fixp = shl i32 %i.0, 26, !taffo.info !124
  %4 = lshr i32 -1073741824, 4
  %add4.s6_26fixp = add i32 %conv3.s6_26fixp, %4, !taffo.info !136, !taffo.constinfo !138
  %conv5.s5_27fixp = shl i32 %n, 27, !taffo.info !129
  %5 = ashr i32 %conv5.s5_27fixp, 1, !taffo.info !129
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %add4.s6_26fixp, i32 %5, i32 26), !taffo.info !141
  %div6.s5_27fixp = shl i32 %6, 1, !taffo.info !143
  %arrayidx7.u6_26fixp = getelementptr inbounds i32, i32* %B.u6_26fixp, i32 %i.0, !taffo.info !144
  %7 = ashr i32 %div6.s5_27fixp, 1, !taffo.info !143
  store i32 %7, i32* %arrayidx7.u6_26fixp, align 4, !taffo.info !135
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !145, !taffo.initweight !122, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !147

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x404111111F0C34C2}
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
!28 = distinct !{null, null}
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
!42 = !{!"fixp", i32 32, i32 26}
!43 = !{double 0x40111111276FB092, double 0x404111111F0C34C2}
!44 = !{!"A"}
!45 = !{!42, !46, i1 false, i2 -1}
!46 = !{double 6.400000e+00, double 0x404222221C8A7A42}
!47 = !{i1 false, !43, i1 false, i2 -1}
!48 = !{i1 false, i1 false, i1 false, i1 false}
!49 = !{i1 false, !46, i1 false, i2 -1}
!50 = !{i1 false}
!51 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 1.600000e+01}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 1.000000e+00}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 1.600000e+01}
!58 = distinct !{!58, !23}
!59 = !{i1 false, i1 false, i1 false}
!60 = !{i32 1, !61, i32 1, !0}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 1.500000e+01, double 1.500000e+01}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 1.000000e+00}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 0.000000e+00}
!67 = distinct !{!67, !23}
!68 = !{i32 -1, i32 2, i32 -1}
!69 = !{i32 1, !61, i32 1, !41, i32 1, !70}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 3.200000e+01, double 3.200000e+01}
!72 = !{void (i32, float*, i32)* @scale_1d}
!73 = !{!42, !71, i1 false, i2 1}
!74 = !{!75, !76, i1 false, i2 -1}
!75 = !{!"fixp", i32 -32, i32 20}
!76 = !{double 0x40611111276FB092, double 0x409111111F0C34C2}
!77 = !{!78, !76, i1 false, i2 -1}
!78 = !{!"fixp", i32 32, i32 21}
!79 = distinct !{!79, !23}
!80 = !{i32 -1, i32 -1, i32 2, i32 2}
!81 = !{i32 1, !16, i32 1, !61, i32 1, !41, i32 1, !45}
!82 = distinct !{null}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 1.000000e+00, double 2.000000e+00}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 1.400000e+01, double 1.400000e+01}
!87 = !{!88, !43, i1 false, i2 -1}
!88 = !{!"fixp", i32 32, i32 25}
!89 = !{!88, !90, i1 false, i2 -1}
!90 = !{double 0x40211111276FB092, double 0x405111111F0C34C2}
!91 = !{!88, !92, i1 false, i2 -1}
!92 = !{double 0x40299999BB2788DB, double 0x40599999AE924F23}
!93 = !{!94, !95, i1 false, i2 -1}
!94 = !{!"fixp", i32 -32, i32 24}
!95 = !{double 0x40111105F81FE170, double 0x40411105EFBC6B1F}
!96 = !{!88, !95, i1 false, i2 -1}
!97 = !{!98, i1 false}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 3.333300e-01, double 3.333300e-01}
!100 = !{!42, !101, i1 false, i2 -1}
!101 = !{double 0x40111105E0000000, double 0x4041110600000000}
!102 = distinct !{!102, !23}
!103 = !{!88, !46, i1 false, i2 -1}
!104 = !{!88, !105, i1 false, i2 -1}
!105 = !{double 1.280000e+01, double 0x405222221C8A7A42}
!106 = !{!88, !107, i1 false, i2 -1}
!107 = !{double 0x4033333333333334, double 0x405B33332ACFB763}
!108 = !{!94, !109, i1 false, i2 -1}
!109 = !{double 0x40199988D2A1F8E5, double 0x404222163A45C16C}
!110 = !{!88, !109, i1 false, i2 -1}
!111 = !{!42, !112, i1 false, i2 -1}
!112 = !{double 0x40199988C0000000, double 0x4042221640000000}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = !{i32 -1, i32 2, i32 2}
!116 = !{i32 1, !61, i32 1, !41, i32 1, !45}
!117 = distinct !{null}
!118 = !{i1 false, !119, i1 false, i2 -1}
!119 = !{double -1.500000e+01, double 1.500000e+01}
!120 = !{i32 0}
!121 = !{i1 false, !55, i1 false, i2 -1}
!122 = !{i32 2}
!123 = !{i32 3}
!124 = !{!125, !119, i1 false, i2 -1}
!125 = !{!"fixp", i32 -32, i32 26}
!126 = !{!125, !127, i1 false, i2 -1}
!127 = !{double -1.300000e+01, double 1.700000e+01}
!128 = !{i1 false, !19}
!129 = !{!130, !62, i1 false, i2 1}
!130 = !{!"fixp", i32 -32, i32 27}
!131 = !{!125, !132, i1 false, i2 -1}
!132 = !{double 0xBFEBBBBBBBBBBBBC, double 0x3FF2222222222222}
!133 = !{!130, !132, i1 false, i2 -1}
!134 = !{!42, !43, i1 false, i2 1}
!135 = !{i1 false, i1 false, i1 false, i2 1}
!136 = !{!125, !137, i1 false, i2 -1}
!137 = !{double -1.200000e+01, double 1.800000e+01}
!138 = !{i1 false, !139}
!139 = !{i1 false, !140, i1 false, i2 0}
!140 = !{double 3.000000e+00, double 3.000000e+00}
!141 = !{!125, !142, i1 false, i2 -1}
!142 = !{double -8.000000e-01, double 1.200000e+00}
!143 = !{!130, !142, i1 false, i2 -1}
!144 = !{!42, !46, i1 false, i2 1}
!145 = !{i1 false, !146, i1 false, i2 -1}
!146 = !{double -1.400000e+01, double 1.600000e+01}
!147 = distinct !{!147, !23}
