; ModuleID = './build/bin/fixed/trmm/16/trmm-standard-4-fixed-16.out.ll.4.taffotmp.ll'
source_filename = "./sources/trmm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@B_float = dso_local global [10 x [16 x float]] zeroinitializer, align 4, !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !4

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
  %alpha.u2_30fixp = alloca i32, align 4, !taffo.info !42
  %A.u3_29fixp = alloca [10 x [10 x i32]], align 4, !taffo.info !45
  %B.u7_25fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !48, !taffo.target !50
  %arraydecay.u3_29fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay4.u7_25fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u7_25fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  call void @init_array.3_fixp(i32 10, i32 16, i32* %alpha.u2_30fixp, [10 x i32]* %arraydecay.u3_29fixp, [16 x i32]* %arraydecay4.u7_25fixp), !taffo.info !51, !taffo.constinfo !52
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 4), !taffo.info !51, !taffo.constinfo !53
  %arraydecay5.u3_29fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !45
  %u3_29fixp = bitcast [10 x i32]* %arraydecay5.u3_29fixp to i32*, !taffo.info !45
  call void @scale_2d.4_fixp(i32 10, i32 10, i32* %u3_29fixp, i32 4), !taffo.info !54, !taffo.constinfo !55
  %arraydecay6.u7_25fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u7_25fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  %u7_25fixp = bitcast [16 x i32]* %arraydecay6.u7_25fixp to i32*, !taffo.info !48, !taffo.target !50
  call void @scale_2d.5_fixp(i32 10, i32 16, i32* %u7_25fixp, i32 4), !taffo.info !56, !taffo.constinfo !55, !taffo.target !50
  call void @timer_start(), !taffo.constinfo !57
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %arraydecay7.u3_29fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay8.u7_25fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u7_25fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  call void @kernel_trmm.2_fixp(i32 10, i32 16, i32 %u2_30fixp, [10 x i32]* %arraydecay7.u3_29fixp, [16 x i32]* %arraydecay8.u7_25fixp), !taffo.info !51, !taffo.constinfo !52
  call void @timer_stop(), !taffo.constinfo !57
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ], !taffo.info !58
  %cmp = icmp slt i32 %i.0, 10, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !62
  %cmp10 = icmp slt i32 %j.0, 16, !taffo.info !60
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %arrayidx.u7_25fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u7_25fixp, i32 0, i32 %i.0, !taffo.info !48, !taffo.target !50
  %arrayidx12.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u7_25fixp, i32 0, i32 %j.0, !taffo.info !48, !taffo.target !50
  %u7_25fixp1 = load i32, i32* %arrayidx12.u7_25fixp, align 4, !taffo.info !48, !taffo.target !50
  %0 = uitofp i32 %u7_25fixp1 to float, !taffo.info !48, !taffo.target !50
  %1 = fdiv float %0, 0x4180000000000000, !taffo.info !48, !taffo.target !50
  %arrayidx13 = getelementptr inbounds [10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx14 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx14, align 4, !taffo.info !56, !taffo.target !50
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %inc = add nsw i32 %j.0, 1, !taffo.info !64, !taffo.constinfo !21
  br label %for.cond9, !llvm.loop !66

for.end:                                          ; preds = %for.cond9
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !taffo.info !67, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !69

for.end17:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 10, i32 noundef 16, [16 x float]* noundef getelementptr inbounds ([10 x [16 x float]], [10 x [16 x float]]* @B_float, i32 0, i32 0)), !taffo.constinfo !70
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %m, i32 noundef %n, [16 x float]* noundef %B) #0 !taffo.initweight !27 !taffo.funinfo !71 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %m, !taffo.info !76
  %add = add nsw i32 %mul, %j.0, !taffo.info !76
  %rem = srem i32 %add, 20, !taffo.info !76, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !74
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)), !taffo.constinfo !53
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %B, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [16 x float], [16 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), double noundef %conv), !taffo.constinfo !70
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !78

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !79

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !80 !taffo.funinfo !81 !taffo.sourceFunction !84 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.2_fixp(i32 noundef %m, i32 noundef %n, i32 noundef %alpha.u2_30fixp, [10 x i32]* noundef %A.u3_29fixp, [16 x i32]* noundef %B.u7_25fixp) #0 !taffo.initweight !85 !taffo.funinfo !86 !taffo.sourceFunction !87 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc19, %for.inc18 ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end20

for.body3:                                        ; preds = %for.cond1
  %add = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ %add, %for.body3 ], [ %inc, %for.inc ], !taffo.info !88
  %cmp5 = icmp slt i32 %k.0, %m, !taffo.info !74
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u3_29fixp, i32 %k.0, !taffo.info !45
  %arrayidx7.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u3_29fixp, i32 0, i32 %i.0, !taffo.info !45
  %u3_29fixp = load i32, i32* %arrayidx7.u3_29fixp, align 4, !taffo.info !45
  %arrayidx8.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u7_25fixp, i32 %k.0, !taffo.info !48
  %arrayidx9.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx8.u7_25fixp, i32 0, i32 %j.0, !taffo.info !48
  %u7_25fixp = load i32, i32* %arrayidx9.u7_25fixp, align 4, !taffo.info !90
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !45
  %1 = lshr i32 %u7_25fixp, 1, !taffo.info !90
  %2 = ashr i32 %0, 6, !taffo.info !45
  %3 = ashr i32 %1, 2, !taffo.info !90
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 22), !taffo.info !92
  %mul.u9_23fixp = shl i32 %4, 1, !taffo.info !95
  %arrayidx10.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u7_25fixp, i32 %i.0, !taffo.info !48
  %arrayidx11.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u7_25fixp, i32 0, i32 %j.0, !taffo.info !48
  %u7_25fixp1 = load i32, i32* %arrayidx11.u7_25fixp, align 4, !taffo.info !90
  %5 = lshr i32 %u7_25fixp1, 2, !taffo.info !90
  %add12.u9_23fixp = add i32 %5, %mul.u9_23fixp, !taffo.info !96
  %6 = shl i32 %add12.u9_23fixp, 2, !taffo.info !96
  store i32 %6, i32* %arrayidx11.u7_25fixp, align 4, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !98

for.end:                                          ; preds = %for.cond4
  %arrayidx13.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u7_25fixp, i32 %i.0, !taffo.info !48
  %arrayidx14.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u7_25fixp, i32 0, i32 %j.0, !taffo.info !48
  %u7_25fixp2 = load i32, i32* %arrayidx14.u7_25fixp, align 4, !taffo.info !99
  %7 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %8 = lshr i32 %u7_25fixp2, 1, !taffo.info !99
  %9 = ashr i32 %7, 6, !taffo.info !42
  %10 = ashr i32 %8, 1, !taffo.info !99
  %11 = call i32 @llvm.smul.fix.i32(i32 %9, i32 %10, i32 23), !taffo.info !101
  %mul15.u8_24fixp = shl i32 %11, 1, !taffo.info !104
  %arrayidx16.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u7_25fixp, i32 %i.0, !taffo.info !48
  %arrayidx17.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx16.u7_25fixp, i32 0, i32 %j.0, !taffo.info !48
  %12 = shl i32 %mul15.u8_24fixp, 1, !taffo.info !104
  store i32 %12, i32* %arrayidx17.u7_25fixp, align 4, !taffo.info !51
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !105

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !106

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.3_fixp(i32 noundef %m, i32 noundef %n, i32* noundef %alpha.u2_30fixp, [10 x i32]* noundef %A.u3_29fixp, [16 x i32]* noundef %B.u7_25fixp) #0 !taffo.initweight !107 !taffo.funinfo !86 !taffo.sourceFunction !108 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !51, !taffo.constinfo !109
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.info !111, !taffo.initweight !112
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp, label %for.body, label %for.end29, !taffo.info !115, !taffo.initweight !116

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !117, !taffo.initweight !112
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !119, !taffo.initweight !116

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp6, label %if.then, label %if.else, !taffo.info !115, !taffo.initweight !116

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.info !121, !taffo.initweight !114
  %rem = srem i32 %add, %m, !taffo.info !123, !taffo.initweight !116
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !125
  %conv7.u4_28fixp = shl i32 %m, 28, !taffo.info !127
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !125
  %1 = lshr i32 %conv7.u4_28fixp, 1, !taffo.info !127
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 27), !taffo.info !128
  %div.u1_31fixp = shl i32 %2, 4, !taffo.info !131
  %arrayidx.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u3_29fixp, i32 %i.0, !taffo.info !133
  %arrayidx8.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u3_29fixp, i32 0, i32 %j.0, !taffo.info !133
  %3 = lshr i32 %div.u1_31fixp, 2, !taffo.info !131
  store i32 %3, i32* %arrayidx8.u3_29fixp, align 4, !taffo.info !134
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u3_29fixp, i32 %i.0, !taffo.info !133
  %arrayidx10.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx9.u3_29fixp, i32 0, i32 %j.0, !taffo.info !133
  store i32 0, i32* %arrayidx10.u3_29fixp, align 4, !taffo.info !134, !taffo.constinfo !135
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !138

for.end:                                          ; preds = %for.cond3
  %arrayidx11.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u3_29fixp, i32 %i.0, !taffo.info !133
  %arrayidx12.u3_29fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u3_29fixp, i32 0, i32 %i.0, !taffo.info !133
  store i32 536870912, i32* %arrayidx12.u3_29fixp, align 4, !taffo.info !134, !taffo.constinfo !139
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.info !117, !taffo.initweight !112
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.info !113, !taffo.initweight !114
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.info !119, !taffo.initweight !116

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.info !140, !taffo.initweight !114
  %add17 = add nsw i32 %n, %sub, !taffo.info !121, !taffo.initweight !116
  %rem18 = srem i32 %add17, %n, !taffo.info !142, !taffo.initweight !144
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !145
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !146
  %4 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !145
  %5 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !146
  %6 = ashr i32 %4, 1, !taffo.info !145
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %6, i32 %5, i32 26), !taffo.info !148
  %div21.u1_31fixp = shl i32 %7, 5, !taffo.info !151
  %arrayidx22.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u7_25fixp, i32 %i.0, !taffo.info !152
  %arrayidx23.u7_25fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u7_25fixp, i32 0, i32 %j.1, !taffo.info !152
  %8 = lshr i32 %div21.u1_31fixp, 6, !taffo.info !151
  store i32 %8, i32* %arrayidx23.u7_25fixp, align 4, !taffo.info !134
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !136, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond13, !llvm.loop !153

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.info !154, !taffo.initweight !114, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !155

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !156 !taffo.funinfo !157 !taffo.sourceFunction !158 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !76
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %0, !taffo.info !45
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx.u3_29fixp, i32 %j.0, !taffo.info !45
  %u3_29fixp = load i32, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !159
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !160
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !159
  %2 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !160
  %3 = ashr i32 %1, 2, !taffo.info !159
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 26), !taffo.info !161
  %mul.u5_27fixp = shl i32 %4, 1, !taffo.info !162
  %5 = mul nsw i32 %i.0, %m, !taffo.info !76
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %5, !taffo.info !45
  %arrayidx6.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx5.u3_29fixp, i32 %j.0, !taffo.info !45
  %6 = shl i32 %mul.u5_27fixp, 2, !taffo.info !162
  store i32 %6, i32* %arrayidx6.u3_29fixp, align 4, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !163

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !164

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u7_25fixp, i32 noundef %factor) #0 !taffo.initweight !156 !taffo.funinfo !165 !taffo.sourceFunction !158 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !74
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !60
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !74
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !76
  %arrayidx.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %0, !taffo.info !48
  %arrayidx4.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx.u7_25fixp, i32 %j.0, !taffo.info !48
  %u7_25fixp = load i32, i32* %arrayidx4.u7_25fixp, align 4, !taffo.info !90
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !166
  %1 = lshr i32 %u7_25fixp, 1, !taffo.info !90
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !166
  %3 = ashr i32 %1, 2, !taffo.info !90
  %4 = ashr i32 %2, 6, !taffo.info !166
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 22), !taffo.info !92
  %mul.u9_23fixp = shl i32 %5, 1, !taffo.info !95
  %6 = mul nsw i32 %i.0, %m, !taffo.info !76
  %arrayidx5.u7_25fixp = getelementptr inbounds i32, i32* %val.u7_25fixp, i32 %6, !taffo.info !48
  %arrayidx6.u7_25fixp = getelementptr inbounds i32, i32* %arrayidx5.u7_25fixp, i32 %j.0, !taffo.info !48
  %7 = shl i32 %mul.u9_23fixp, 2, !taffo.info !95
  store i32 %7, i32* %arrayidx6.u7_25fixp, align 4, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !167

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !168

for.end9:                                         ; preds = %for.cond
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
!1 = !{double 0.000000e+00, double 8.550000e+01}
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
!26 = distinct !{null}
!27 = !{i32 -1, i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = distinct !{null, null}
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
!45 = !{!46, !47, i1 false, i2 -1}
!46 = !{!"fixp", i32 32, i32 29}
!47 = !{double 0.000000e+00, double 4.000000e+00}
!48 = !{!49, !1, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 25}
!50 = !{!"B"}
!51 = !{i1 false, !44, i1 false, i2 -1}
!52 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!53 = !{i1 false, i1 false, i1 false}
!54 = !{i1 false, !47, i1 false, i2 -1}
!55 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!56 = !{i1 false, !1, i1 false, i2 -1}
!57 = !{i1 false}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 1.100000e+01}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 1.000000e+00}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 1.870000e+02}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 1.000000e+00, double 1.870000e+02}
!66 = distinct !{!66, !23}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.000000e+00, double 1.100000e+01}
!69 = distinct !{!69, !23}
!70 = !{i1 false, i1 false, i1 false, i1 false}
!71 = !{i32 1, !16, i32 1, !72, i32 1, !0}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.600000e+01, double 1.600000e+01}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 1.000000e+00}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 0.000000e+00}
!78 = distinct !{!78, !23}
!79 = distinct !{!79, !23}
!80 = !{i32 1, i32 -1}
!81 = !{i32 1, !42, i32 1, !82}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 4.000000e+00, double 4.000000e+00}
!84 = !{void (float*, i32)* @scale_scalar}
!85 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2}
!86 = !{i32 1, !16, i32 1, !72, i32 1, !42, i32 1, !45, i32 1, !48}
!87 = distinct !{null}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.000000e+00, double 2.000000e+00}
!90 = !{!91, !1, i1 false, i2 -1}
!91 = !{!"fixp", i32 32, i32 23}
!92 = !{!93, !94, i1 false, i2 -1}
!93 = !{!"fixp", i32 -32, i32 22}
!94 = !{double 0.000000e+00, double 3.420000e+02}
!95 = !{!91, !94, i1 false, i2 -1}
!96 = !{!91, !97, i1 false, i2 -1}
!97 = !{double 0.000000e+00, double 4.275000e+02}
!98 = distinct !{!98, !23}
!99 = !{!100, !1, i1 false, i2 -1}
!100 = !{!"fixp", i32 32, i32 24}
!101 = !{!102, !103, i1 false, i2 -1}
!102 = !{!"fixp", i32 -32, i32 23}
!103 = !{double 0.000000e+00, double 1.282500e+02}
!104 = !{!100, !103, i1 false, i2 -1}
!105 = distinct !{!105, !23}
!106 = distinct !{!106, !23}
!107 = !{i32 -1, i32 -1, i32 1, i32 2, i32 2}
!108 = distinct !{null}
!109 = !{!110, i1 false}
!110 = !{i1 false, !44, i1 false, i2 0}
!111 = !{i1 false, !59, i1 false, i2 1}
!112 = !{i32 0}
!113 = !{i1 false, !61, i1 false, i2 1}
!114 = !{i32 2}
!115 = !{i1 false, !3, i1 false, i2 1}
!116 = !{i32 3}
!117 = !{i1 false, !118, i1 false, i2 1}
!118 = !{double 0.000000e+00, double 1.700000e+01}
!119 = !{i1 false, !120, i1 false, i2 1}
!120 = !{double 0.000000e+00, double 1.600000e+01}
!121 = !{i1 false, !122, i1 false, i2 1}
!122 = !{double 0.000000e+00, double 2.600000e+01}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double 0.000000e+00, double 9.000000e+00}
!125 = !{!126, !124, i1 false, i2 1}
!126 = !{!"fixp", i32 32, i32 28}
!127 = !{!126, !17, i1 false, i2 1}
!128 = !{!129, !130, i1 false, i2 1}
!129 = !{!"fixp", i32 -32, i32 27}
!130 = !{double 0.000000e+00, double 9.000000e-01}
!131 = !{!132, !130, i1 false, i2 1}
!132 = !{!"fixp", i32 32, i32 31}
!133 = !{!46, !47, i1 false, i2 1}
!134 = !{i1 false, i1 false, i1 false, i2 1}
!135 = !{!76, i1 false}
!136 = !{i1 false, !137, i1 false, i2 1}
!137 = !{double 1.000000e+00, double 1.700000e+01}
!138 = distinct !{!138, !23}
!139 = !{!74, i1 false}
!140 = !{i1 false, !141, i1 false, i2 1}
!141 = !{double -1.600000e+01, double 1.000000e+01}
!142 = !{i1 false, !143, i1 false, i2 1}
!143 = !{double 0.000000e+00, double 1.500000e+01}
!144 = !{i32 4}
!145 = !{!126, !143, i1 false, i2 1}
!146 = !{!147, !73, i1 false, i2 1}
!147 = !{!"fixp", i32 32, i32 27}
!148 = !{!149, !150, i1 false, i2 1}
!149 = !{!"fixp", i32 -32, i32 26}
!150 = !{double 0.000000e+00, double 9.375000e-01}
!151 = !{!132, !150, i1 false, i2 1}
!152 = !{!49, !1, i1 false, i2 1}
!153 = distinct !{!153, !23}
!154 = !{i1 false, !68, i1 false, i2 1}
!155 = distinct !{!155, !23}
!156 = !{i32 -1, i32 -1, i32 3, i32 -1}
!157 = !{i32 1, !16, i32 1, !16, i32 1, !45, i32 1, !82}
!158 = !{void (i32, i32, float*, i32)* @scale_2d}
!159 = !{!147, !47, i1 false, i2 -1}
!160 = !{!147, !83, i1 false, i2 1}
!161 = !{!149, !120, i1 false, i2 -1}
!162 = !{!147, !120, i1 false, i2 -1}
!163 = distinct !{!163, !23}
!164 = distinct !{!164, !23}
!165 = !{i32 1, !16, i32 1, !72, i32 1, !48, i32 1, !82}
!166 = !{!46, !83, i1 false, i2 1}
!167 = distinct !{!167, !23}
!168 = distinct !{!168, !23}
