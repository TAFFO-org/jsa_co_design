; ModuleID = './build/bin/fixed/jacobi-1d/24/jacobi-1d-standard-2-fixed-24.out.ll.4.taffotmp.ll'
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
  %A.u2_30fixp = alloca [15 x i32], align 4, !taffo.info !41, !taffo.target !44
  %B.u2_30fixp = alloca [15 x i32], align 4, !taffo.info !45
  %arraydecay.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %arraydecay3.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !45
  call void @init_array.4_fixp(i32 15, i32* %arraydecay.u2_30fixp, i32* %arraydecay3.u2_30fixp), !taffo.info !47, !taffo.constinfo !48, !taffo.target !44
  %arraydecay4.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  call void @scale_1d.1_fixp(i32 15, i32* %arraydecay4.u2_30fixp, i32 2), !taffo.info !47, !taffo.constinfo !48, !taffo.target !44
  %arraydecay5.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !45
  call void @scale_1d.1_fixp(i32 15, i32* %arraydecay5.u2_30fixp, i32 2), !taffo.info !49, !taffo.constinfo !48
  call void @timer_start(), !taffo.constinfo !50
  %arraydecay6.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !41, !taffo.target !44
  %arraydecay7.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !45
  call void @kernel_jacobi_1d.2_fixp(i32 10, i32 15, i32* %arraydecay6.u2_30fixp, i32* %arraydecay7.u2_30fixp), !taffo.info !47, !taffo.constinfo !51, !taffo.target !44
  call void @timer_stop(), !taffo.constinfo !50
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, 15, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds [15 x i32], [15 x i32]* %A.u2_30fixp, i32 0, i32 %i.0, !taffo.info !41, !taffo.target !44
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !41, !taffo.target !44
  %0 = uitofp i32 %u2_30fixp to float, !taffo.info !41, !taffo.target !44
  %1 = fdiv float %0, 0x41D0000000000000, !taffo.info !41, !taffo.target !44
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
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !68 !taffo.funinfo !69 !taffo.sourceFunction !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !41
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !71
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !73
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !71
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !73
  %2 = ashr i32 %0, 1, !taffo.info !71
  %3 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %1, i32 28), !taffo.info !74
  %mul.u3_29fixp = shl i32 %3, 1, !taffo.info !77
  %arrayidx1.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %i.0, !taffo.info !41
  %4 = shl i32 %mul.u3_29fixp, 1, !taffo.info !77
  store i32 %4, i32* %arrayidx1.u2_30fixp, align 4, !taffo.info !47
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_jacobi_1d.2_fixp(i32 noundef %tsteps, i32 noundef %n, i32* noundef %A.u2_30fixp, i32* noundef %B.u2_30fixp) #0 !taffo.initweight !79 !taffo.funinfo !80 !taffo.sourceFunction !81 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ], !taffo.info !54
  %cmp = icmp slt i32 %t.0, %tsteps, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ], !taffo.info !82
  %sub = sub nsw i32 %n, 1, !taffo.info !84, !taffo.constinfo !21
  %cmp2 = icmp slt i32 %i.0, %sub, !taffo.info !63
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %sub4 = sub nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !21
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %sub4, !taffo.info !41
  %u2_30fixp = load i32, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !71
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %i.0, !taffo.info !41
  %u2_30fixp1 = load i32, i32* %arrayidx5.u2_30fixp, align 4, !taffo.info !71
  %0 = lshr i32 %u2_30fixp, 1, !taffo.info !71
  %1 = lshr i32 %u2_30fixp1, 1, !taffo.info !71
  %add.u3_29fixp = add i32 %0, %1, !taffo.info !77
  %add6 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx7.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %add6, !taffo.info !41
  %u2_30fixp2 = load i32, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !71
  %2 = lshr i32 %u2_30fixp2, 1, !taffo.info !71
  %add8.u3_29fixp = add i32 %add.u3_29fixp, %2, !taffo.info !86
  %3 = lshr i32 715820724, 1
  %4 = lshr i32 %add8.u3_29fixp, 1, !taffo.info !86
  %5 = ashr i32 %3, 2
  %6 = call i32 @llvm.smul.fix.i32(i32 %5, i32 %4, i32 28), !taffo.info !88
  %mul.u3_29fixp = shl i32 %6, 1, !taffo.info !90, !taffo.constinfo !91
  %conv9.u2_30fixp = shl i32 %mul.u3_29fixp, 1, !taffo.info !94, !taffo.constinfo !91
  %arrayidx10.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %i.0, !taffo.info !45
  store i32 %conv9.u2_30fixp, i32* %arrayidx10.u2_30fixp, align 4, !taffo.info !49
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !96

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc27, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc28, %for.inc27 ], !taffo.info !82
  %sub12 = sub nsw i32 %n, 1, !taffo.info !84, !taffo.constinfo !21
  %cmp13 = icmp slt i32 %i.1, %sub12, !taffo.info !63
  br i1 %cmp13, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond11
  %sub16 = sub nsw i32 %i.1, 1, !taffo.info !65, !taffo.constinfo !21
  %arrayidx17.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %sub16, !taffo.info !45
  %u2_30fixp3 = load i32, i32* %arrayidx17.u2_30fixp, align 4, !taffo.info !97
  %arrayidx18.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %i.1, !taffo.info !45
  %u2_30fixp4 = load i32, i32* %arrayidx18.u2_30fixp, align 4, !taffo.info !97
  %7 = lshr i32 %u2_30fixp3, 1, !taffo.info !97
  %8 = lshr i32 %u2_30fixp4, 1, !taffo.info !97
  %add19.u3_29fixp = add i32 %7, %8, !taffo.info !98
  %add20 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx21.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %add20, !taffo.info !45
  %u2_30fixp5 = load i32, i32* %arrayidx21.u2_30fixp, align 4, !taffo.info !97
  %9 = lshr i32 %u2_30fixp5, 1, !taffo.info !97
  %add22.u3_29fixp = add i32 %add19.u3_29fixp, %9, !taffo.info !100
  %10 = lshr i32 715820724, 1
  %11 = lshr i32 %add22.u3_29fixp, 1, !taffo.info !100
  %12 = ashr i32 %10, 2
  %13 = call i32 @llvm.smul.fix.i32(i32 %12, i32 %11, i32 28), !taffo.info !102
  %mul24.u3_29fixp = shl i32 %13, 1, !taffo.info !104, !taffo.constinfo !91
  %conv25.u2_30fixp = shl i32 %mul24.u3_29fixp, 1, !taffo.info !105, !taffo.constinfo !91
  %arrayidx26.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %i.1, !taffo.info !41
  store i32 %conv25.u2_30fixp, i32* %arrayidx26.u2_30fixp, align 4, !taffo.info !47
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15
  %inc28 = add nsw i32 %i.1, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !107

for.end29:                                        ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %t.0, 1, !taffo.info !63, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !108

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %n, i32* noundef %A.u2_30fixp, i32* noundef %B.u2_30fixp) #0 !taffo.initweight !109 !taffo.funinfo !110 !taffo.sourceFunction !111 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !112, !taffo.initweight !114
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !115, !taffo.initweight !116
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !112, !taffo.initweight !117

for.body:                                         ; preds = %for.cond
  %conv.s6_26fixp = shl i32 %i.0, 26, !taffo.info !118
  %0 = lshr i32 -2147483648, 4
  %add.s6_26fixp = add i32 %conv.s6_26fixp, %0, !taffo.info !120, !taffo.constinfo !122
  %conv2.s5_27fixp = shl i32 %n, 27, !taffo.info !123
  %1 = ashr i32 %conv2.s5_27fixp, 1, !taffo.info !123
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %add.s6_26fixp, i32 %1, i32 26), !taffo.info !125
  %div.s5_27fixp = shl i32 %2, 1, !taffo.info !127
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %A.u2_30fixp, i32 %i.0, !taffo.info !128
  %3 = shl i32 %div.s5_27fixp, 3, !taffo.info !127
  store i32 %3, i32* %arrayidx.u2_30fixp, align 4, !taffo.info !129
  %conv3.s6_26fixp = shl i32 %i.0, 26, !taffo.info !118
  %4 = lshr i32 -1073741824, 4
  %add4.s6_26fixp = add i32 %conv3.s6_26fixp, %4, !taffo.info !130, !taffo.constinfo !132
  %conv5.s5_27fixp = shl i32 %n, 27, !taffo.info !123
  %5 = ashr i32 %conv5.s5_27fixp, 1, !taffo.info !123
  %6 = call i32 @llvm.sdiv.fix.i32(i32 %add4.s6_26fixp, i32 %5, i32 26), !taffo.info !135
  %div6.s5_27fixp = shl i32 %6, 1, !taffo.info !137
  %arrayidx7.u2_30fixp = getelementptr inbounds i32, i32* %B.u2_30fixp, i32 %i.0, !taffo.info !138
  %7 = shl i32 %div6.s5_27fixp, 3, !taffo.info !137
  store i32 %7, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !129
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !139, !taffo.initweight !116, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !141

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
!1 = !{double 0.000000e+00, double 0x40011110E453D20F}
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
!42 = !{!"fixp", i32 32, i32 30}
!43 = !{double 2.666670e-01, double 0x40011110E453D20F}
!44 = !{!"A"}
!45 = !{!42, !46, i1 false, i2 -1}
!46 = !{double 4.000000e-01, double 0x400222224EDF6124}
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
!69 = !{i32 1, !61, i32 1, !41, i32 1, !19}
!70 = !{void (i32, float*, i32)* @scale_1d}
!71 = !{!72, !43, i1 false, i2 -1}
!72 = !{!"fixp", i32 32, i32 29}
!73 = !{!72, !20, i1 false, i2 1}
!74 = !{!75, !76, i1 false, i2 -1}
!75 = !{!"fixp", i32 -32, i32 28}
!76 = !{double 5.333340e-01, double 0x40111110E453D20F}
!77 = !{!72, !76, i1 false, i2 -1}
!78 = distinct !{!78, !23}
!79 = !{i32 -1, i32 -1, i32 2, i32 2}
!80 = !{i32 1, !16, i32 1, !61, i32 1, !41, i32 1, !45}
!81 = distinct !{null}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 1.000000e+00, double 2.000000e+00}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 1.400000e+01, double 1.400000e+01}
!86 = !{!72, !87, i1 false, i2 -1}
!87 = !{double 0x3FE9999BB2788DB0, double 0x40199999567DBB16}
!88 = !{!75, !89, i1 false, i2 -1}
!89 = !{double 0x3FD1110747AA5E17, double 0x40011105B5042EE8}
!90 = !{!72, !89, i1 false, i2 -1}
!91 = !{!92, i1 false}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 3.333300e-01, double 3.333300e-01}
!94 = !{!42, !95, i1 false, i2 -1}
!95 = !{double 0x3FD1110740000000, double 0x40011105C0000000}
!96 = distinct !{!96, !23}
!97 = !{!72, !46, i1 false, i2 -1}
!98 = !{!72, !99, i1 false, i2 -1}
!99 = !{double 8.000000e-01, double 0x401222224EDF6124}
!100 = !{!72, !101, i1 false, i2 -1}
!101 = !{double 0x3FF3333333333334, double 0x401B3333764F11B6}
!102 = !{!75, !103, i1 false, i2 -1}
!103 = !{double 0x3FD99988D2A1F8E5, double 0x400222166C9A8751}
!104 = !{!72, !103, i1 false, i2 -1}
!105 = !{!42, !106, i1 false, i2 -1}
!106 = !{double 0x3FD99988C0000000, double 0x4002221680000000}
!107 = distinct !{!107, !23}
!108 = distinct !{!108, !23}
!109 = !{i32 -1, i32 2, i32 2}
!110 = !{i32 1, !61, i32 1, !41, i32 1, !45}
!111 = distinct !{null}
!112 = !{i1 false, !113, i1 false, i2 -1}
!113 = !{double -1.500000e+01, double 1.500000e+01}
!114 = !{i32 0}
!115 = !{i1 false, !55, i1 false, i2 -1}
!116 = !{i32 2}
!117 = !{i32 3}
!118 = !{!119, !113, i1 false, i2 -1}
!119 = !{!"fixp", i32 -32, i32 26}
!120 = !{!119, !121, i1 false, i2 -1}
!121 = !{double -1.300000e+01, double 1.700000e+01}
!122 = !{i1 false, !19}
!123 = !{!124, !62, i1 false, i2 1}
!124 = !{!"fixp", i32 -32, i32 27}
!125 = !{!119, !126, i1 false, i2 -1}
!126 = !{double 0xBFEBBBBBBBBBBBBC, double 0x3FF2222222222222}
!127 = !{!124, !126, i1 false, i2 -1}
!128 = !{!42, !43, i1 false, i2 1}
!129 = !{i1 false, i1 false, i1 false, i2 1}
!130 = !{!119, !131, i1 false, i2 -1}
!131 = !{double -1.200000e+01, double 1.800000e+01}
!132 = !{i1 false, !133}
!133 = !{i1 false, !134, i1 false, i2 0}
!134 = !{double 3.000000e+00, double 3.000000e+00}
!135 = !{!119, !136, i1 false, i2 -1}
!136 = !{double -8.000000e-01, double 1.200000e+00}
!137 = !{!124, !136, i1 false, i2 -1}
!138 = !{!42, !46, i1 false, i2 1}
!139 = !{i1 false, !140, i1 false, i2 -1}
!140 = !{double -1.400000e+01, double 1.600000e+01}
!141 = distinct !{!141, !23}
