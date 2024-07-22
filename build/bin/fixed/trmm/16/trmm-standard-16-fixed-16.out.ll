; ModuleID = './build/bin/fixed/trmm/16/trmm-standard-16-fixed-16.out.ll.4.taffotmp.ll'
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
  %A.u5_27fixp = alloca [10 x [10 x i32]], align 4, !taffo.info !45
  %B.u11_21fixp = alloca [10 x [16 x i32]], align 4, !taffo.info !48, !taffo.target !50
  %arraydecay.u5_27fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay4.u11_21fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u11_21fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  call void @init_array.3_fixp(i32 10, i32 16, i32* %alpha.u2_30fixp, [10 x i32]* %arraydecay.u5_27fixp, [16 x i32]* %arraydecay4.u11_21fixp), !taffo.info !51, !taffo.constinfo !52
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 16), !taffo.info !51, !taffo.constinfo !53
  %arraydecay5.u5_27fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !45
  %u5_27fixp = bitcast [10 x i32]* %arraydecay5.u5_27fixp to i32*, !taffo.info !45
  call void @scale_2d.4_fixp(i32 10, i32 10, i32* %u5_27fixp, i32 16), !taffo.info !54, !taffo.constinfo !55
  %arraydecay6.u11_21fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u11_21fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  %u11_21fixp = bitcast [16 x i32]* %arraydecay6.u11_21fixp to i32*, !taffo.info !48, !taffo.target !50
  call void @scale_2d.5_fixp(i32 10, i32 16, i32* %u11_21fixp, i32 16), !taffo.info !56, !taffo.constinfo !55, !taffo.target !50
  call void @timer_start(), !taffo.constinfo !57
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %arraydecay7.u5_27fixp = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %A.u5_27fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay8.u11_21fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u11_21fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  call void @kernel_trmm.2_fixp(i32 10, i32 16, i32 %u2_30fixp, [10 x i32]* %arraydecay7.u5_27fixp, [16 x i32]* %arraydecay8.u11_21fixp), !taffo.info !51, !taffo.constinfo !52
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
  %arrayidx.u11_21fixp = getelementptr inbounds [10 x [16 x i32]], [10 x [16 x i32]]* %B.u11_21fixp, i32 0, i32 %i.0, !taffo.info !48, !taffo.target !50
  %arrayidx12.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx.u11_21fixp, i32 0, i32 %j.0, !taffo.info !48, !taffo.target !50
  %u11_21fixp1 = load i32, i32* %arrayidx12.u11_21fixp, align 4, !taffo.info !48, !taffo.target !50
  %0 = uitofp i32 %u11_21fixp1 to float, !taffo.info !48, !taffo.target !50
  %1 = fdiv float %0, 0x4140000000000000, !taffo.info !48, !taffo.target !50
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
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !80 !taffo.funinfo !81 !taffo.sourceFunction !82 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_trmm.2_fixp(i32 noundef %m, i32 noundef %n, i32 noundef %alpha.u2_30fixp, [10 x i32]* noundef %A.u5_27fixp, [16 x i32]* noundef %B.u11_21fixp) #0 !taffo.initweight !83 !taffo.funinfo !84 !taffo.sourceFunction !85 {
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
  %k.0 = phi i32 [ %add, %for.body3 ], [ %inc, %for.inc ], !taffo.info !86
  %cmp5 = icmp slt i32 %k.0, %m, !taffo.info !74
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u5_27fixp, i32 %k.0, !taffo.info !45
  %arrayidx7.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %i.0, !taffo.info !45
  %u5_27fixp = load i32, i32* %arrayidx7.u5_27fixp, align 4, !taffo.info !45
  %arrayidx8.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u11_21fixp, i32 %k.0, !taffo.info !48
  %arrayidx9.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx8.u11_21fixp, i32 0, i32 %j.0, !taffo.info !48
  %u11_21fixp = load i32, i32* %arrayidx9.u11_21fixp, align 4, !taffo.info !48
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !45
  %1 = lshr i32 %u11_21fixp, 1, !taffo.info !48
  %2 = ashr i32 %0, 10, !taffo.info !45
  %3 = ashr i32 %1, 4, !taffo.info !48
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 16), !taffo.info !88
  %mul.u15_17fixp = shl i32 %4, 1, !taffo.info !91
  %arrayidx10.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u11_21fixp, i32 %i.0, !taffo.info !48
  %arrayidx11.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx10.u11_21fixp, i32 0, i32 %j.0, !taffo.info !48
  %u11_21fixp1 = load i32, i32* %arrayidx11.u11_21fixp, align 4, !taffo.info !48
  %5 = lshr i32 %u11_21fixp1, 4, !taffo.info !48
  %add12.u15_17fixp = add i32 %5, %mul.u15_17fixp, !taffo.info !93
  %6 = shl i32 %add12.u15_17fixp, 4, !taffo.info !93
  store i32 %6, i32* %arrayidx11.u11_21fixp, align 4, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %k.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !95

for.end:                                          ; preds = %for.cond4
  %arrayidx13.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u11_21fixp, i32 %i.0, !taffo.info !48
  %arrayidx14.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx13.u11_21fixp, i32 0, i32 %j.0, !taffo.info !48
  %u11_21fixp2 = load i32, i32* %arrayidx14.u11_21fixp, align 4, !taffo.info !48
  %7 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %8 = lshr i32 %u11_21fixp2, 1, !taffo.info !48
  %9 = ashr i32 %7, 9, !taffo.info !42
  %10 = call i32 @llvm.smul.fix.i32(i32 %9, i32 %8, i32 20), !taffo.info !96
  %mul15.u11_21fixp = shl i32 %10, 1, !taffo.info !99
  %arrayidx16.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u11_21fixp, i32 %i.0, !taffo.info !48
  %arrayidx17.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx16.u11_21fixp, i32 0, i32 %j.0, !taffo.info !48
  store i32 %mul15.u11_21fixp, i32* %arrayidx17.u11_21fixp, align 4, !taffo.info !51
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !100

for.end20:                                        ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %inc22 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !101

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.3_fixp(i32 noundef %m, i32 noundef %n, i32* noundef %alpha.u2_30fixp, [10 x i32]* noundef %A.u5_27fixp, [16 x i32]* noundef %B.u11_21fixp) #0 !taffo.initweight !102 !taffo.funinfo !84 !taffo.sourceFunction !103 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !51, !taffo.constinfo !104
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ], !taffo.info !106, !taffo.initweight !107
  %cmp = icmp slt i32 %i.0, %m, !taffo.info !108, !taffo.initweight !109
  br i1 %cmp, label %for.body, label %for.end29, !taffo.info !110, !taffo.initweight !111

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !112, !taffo.initweight !107
  %cmp4 = icmp slt i32 %j.0, %m, !taffo.info !108, !taffo.initweight !109
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !114, !taffo.initweight !111

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp slt i32 %j.0, %i.0, !taffo.info !108, !taffo.initweight !109
  br i1 %cmp6, label %if.then, label %if.else, !taffo.info !110, !taffo.initweight !111

if.then:                                          ; preds = %for.body5
  %add = add nsw i32 %i.0, %j.0, !taffo.info !115, !taffo.initweight !109
  %rem = srem i32 %add, %m, !taffo.info !117, !taffo.initweight !111
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !119
  %conv7.u4_28fixp = shl i32 %m, 28, !taffo.info !121
  %0 = lshr i32 %conv.u4_28fixp, 1, !taffo.info !119
  %1 = lshr i32 %conv7.u4_28fixp, 1, !taffo.info !121
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 27), !taffo.info !122
  %div.u1_31fixp = shl i32 %2, 4, !taffo.info !125
  %arrayidx.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !127
  %arrayidx8.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !127
  %3 = lshr i32 %div.u1_31fixp, 4, !taffo.info !125
  store i32 %3, i32* %arrayidx8.u5_27fixp, align 4, !taffo.info !128
  br label %if.end

if.else:                                          ; preds = %for.body5
  %arrayidx9.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !127
  %arrayidx10.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx9.u5_27fixp, i32 0, i32 %j.0, !taffo.info !127
  store i32 0, i32* %arrayidx10.u5_27fixp, align 4, !taffo.info !128, !taffo.constinfo !129
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !130, !taffo.initweight !109, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !132

for.end:                                          ; preds = %for.cond3
  %arrayidx11.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u5_27fixp, i32 %i.0, !taffo.info !127
  %arrayidx12.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx11.u5_27fixp, i32 0, i32 %i.0, !taffo.info !127
  store i32 134217728, i32* %arrayidx12.u5_27fixp, align 4, !taffo.info !128, !taffo.constinfo !133
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.info !112, !taffo.initweight !107
  %cmp14 = icmp slt i32 %j.1, %n, !taffo.info !108, !taffo.initweight !109
  br i1 %cmp14, label %for.body16, label %for.end26, !taffo.info !114, !taffo.initweight !111

for.body16:                                       ; preds = %for.cond13
  %sub = sub nsw i32 %i.0, %j.1, !taffo.info !134, !taffo.initweight !109
  %add17 = add nsw i32 %n, %sub, !taffo.info !115, !taffo.initweight !111
  %rem18 = srem i32 %add17, %n, !taffo.info !136, !taffo.initweight !138
  %conv19.u4_28fixp = shl i32 %rem18, 28, !taffo.info !139
  %conv20.u5_27fixp = shl i32 %n, 27, !taffo.info !140
  %4 = lshr i32 %conv19.u4_28fixp, 1, !taffo.info !139
  %5 = lshr i32 %conv20.u5_27fixp, 1, !taffo.info !140
  %6 = ashr i32 %4, 1, !taffo.info !139
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %6, i32 %5, i32 26), !taffo.info !141
  %div21.u1_31fixp = shl i32 %7, 5, !taffo.info !144
  %arrayidx22.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %B.u11_21fixp, i32 %i.0, !taffo.info !145
  %arrayidx23.u11_21fixp = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx22.u11_21fixp, i32 0, i32 %j.1, !taffo.info !145
  %8 = lshr i32 %div21.u1_31fixp, 10, !taffo.info !144
  store i32 %8, i32* %arrayidx23.u11_21fixp, align 4, !taffo.info !128
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %inc25 = add nsw i32 %j.1, 1, !taffo.info !130, !taffo.initweight !109, !taffo.constinfo !21
  br label %for.cond13, !llvm.loop !146

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %inc28 = add nsw i32 %i.0, 1, !taffo.info !147, !taffo.initweight !109, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !148

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !149 !taffo.funinfo !150 !taffo.sourceFunction !151 {
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
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %0, !taffo.info !45
  %arrayidx4.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx.u5_27fixp, i32 %j.0, !taffo.info !45
  %u5_27fixp = load i32, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !45
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !140
  %1 = lshr i32 %u5_27fixp, 1, !taffo.info !45
  %2 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !140
  %3 = ashr i32 %1, 4, !taffo.info !45
  %4 = ashr i32 %2, 4, !taffo.info !140
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 22), !taffo.info !152
  %mul.u9_23fixp = shl i32 %5, 1, !taffo.info !155
  %6 = mul nsw i32 %i.0, %m, !taffo.info !76
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %6, !taffo.info !45
  %arrayidx6.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx5.u5_27fixp, i32 %j.0, !taffo.info !45
  %7 = shl i32 %mul.u9_23fixp, 4, !taffo.info !155
  store i32 %7, i32* %arrayidx6.u5_27fixp, align 4, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !157

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !158

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u11_21fixp, i32 noundef %factor) #0 !taffo.initweight !149 !taffo.funinfo !159 !taffo.sourceFunction !151 {
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
  %arrayidx.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %0, !taffo.info !48
  %arrayidx4.u11_21fixp = getelementptr inbounds i32, i32* %arrayidx.u11_21fixp, i32 %j.0, !taffo.info !48
  %u11_21fixp = load i32, i32* %arrayidx4.u11_21fixp, align 4, !taffo.info !48
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !140
  %1 = lshr i32 %u11_21fixp, 1, !taffo.info !48
  %2 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !140
  %3 = ashr i32 %1, 4, !taffo.info !48
  %4 = ashr i32 %2, 10, !taffo.info !140
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 16), !taffo.info !88
  %mul.u15_17fixp = shl i32 %5, 1, !taffo.info !91
  %6 = mul nsw i32 %i.0, %m, !taffo.info !76
  %arrayidx5.u11_21fixp = getelementptr inbounds i32, i32* %val.u11_21fixp, i32 %6, !taffo.info !48
  %arrayidx6.u11_21fixp = getelementptr inbounds i32, i32* %arrayidx5.u11_21fixp, i32 %j.0, !taffo.info !48
  %7 = shl i32 %mul.u15_17fixp, 4, !taffo.info !91
  store i32 %7, i32* %arrayidx6.u11_21fixp, align 4, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !160

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !161

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
!1 = !{double 0.000000e+00, double 1.341000e+03}
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
!46 = !{!"fixp", i32 32, i32 27}
!47 = !{double 0.000000e+00, double 1.600000e+01}
!48 = !{!49, !1, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 21}
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
!81 = !{i32 1, !42, i32 1, !72}
!82 = !{void (float*, i32)* @scale_scalar}
!83 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2}
!84 = !{i32 1, !16, i32 1, !72, i32 1, !42, i32 1, !45, i32 1, !48}
!85 = distinct !{null}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 1.000000e+00, double 2.000000e+00}
!88 = !{!89, !90, i1 false, i2 -1}
!89 = !{!"fixp", i32 -32, i32 16}
!90 = !{double 0.000000e+00, double 2.145600e+04}
!91 = !{!92, !90, i1 false, i2 -1}
!92 = !{!"fixp", i32 32, i32 17}
!93 = !{!92, !94, i1 false, i2 -1}
!94 = !{double 0.000000e+00, double 2.279700e+04}
!95 = distinct !{!95, !23}
!96 = !{!97, !98, i1 false, i2 -1}
!97 = !{!"fixp", i32 -32, i32 20}
!98 = !{double 0.000000e+00, double 2.011500e+03}
!99 = !{!49, !98, i1 false, i2 -1}
!100 = distinct !{!100, !23}
!101 = distinct !{!101, !23}
!102 = !{i32 -1, i32 -1, i32 1, i32 2, i32 2}
!103 = distinct !{null}
!104 = !{!105, i1 false}
!105 = !{i1 false, !44, i1 false, i2 0}
!106 = !{i1 false, !59, i1 false, i2 1}
!107 = !{i32 0}
!108 = !{i1 false, !61, i1 false, i2 1}
!109 = !{i32 2}
!110 = !{i1 false, !3, i1 false, i2 1}
!111 = !{i32 3}
!112 = !{i1 false, !113, i1 false, i2 1}
!113 = !{double 0.000000e+00, double 1.700000e+01}
!114 = !{i1 false, !47, i1 false, i2 1}
!115 = !{i1 false, !116, i1 false, i2 1}
!116 = !{double 0.000000e+00, double 2.600000e+01}
!117 = !{i1 false, !118, i1 false, i2 1}
!118 = !{double 0.000000e+00, double 9.000000e+00}
!119 = !{!120, !118, i1 false, i2 1}
!120 = !{!"fixp", i32 32, i32 28}
!121 = !{!120, !17, i1 false, i2 1}
!122 = !{!123, !124, i1 false, i2 1}
!123 = !{!"fixp", i32 -32, i32 27}
!124 = !{double 0.000000e+00, double 9.000000e-01}
!125 = !{!126, !124, i1 false, i2 1}
!126 = !{!"fixp", i32 32, i32 31}
!127 = !{!46, !47, i1 false, i2 1}
!128 = !{i1 false, i1 false, i1 false, i2 1}
!129 = !{!76, i1 false}
!130 = !{i1 false, !131, i1 false, i2 1}
!131 = !{double 1.000000e+00, double 1.700000e+01}
!132 = distinct !{!132, !23}
!133 = !{!74, i1 false}
!134 = !{i1 false, !135, i1 false, i2 1}
!135 = !{double -1.600000e+01, double 1.000000e+01}
!136 = !{i1 false, !137, i1 false, i2 1}
!137 = !{double 0.000000e+00, double 1.500000e+01}
!138 = !{i32 4}
!139 = !{!120, !137, i1 false, i2 1}
!140 = !{!46, !73, i1 false, i2 1}
!141 = !{!142, !143, i1 false, i2 1}
!142 = !{!"fixp", i32 -32, i32 26}
!143 = !{double 0.000000e+00, double 9.375000e-01}
!144 = !{!126, !143, i1 false, i2 1}
!145 = !{!49, !1, i1 false, i2 1}
!146 = distinct !{!146, !23}
!147 = !{i1 false, !68, i1 false, i2 1}
!148 = distinct !{!148, !23}
!149 = !{i32 -1, i32 -1, i32 3, i32 -1}
!150 = !{i32 1, !16, i32 1, !16, i32 1, !45, i32 1, !72}
!151 = !{void (i32, i32, float*, i32)* @scale_2d}
!152 = !{!153, !154, i1 false, i2 -1}
!153 = !{!"fixp", i32 -32, i32 22}
!154 = !{double 0.000000e+00, double 2.560000e+02}
!155 = !{!156, !154, i1 false, i2 -1}
!156 = !{!"fixp", i32 32, i32 23}
!157 = distinct !{!157, !23}
!158 = distinct !{!158, !23}
!159 = !{i32 1, !16, i32 1, !72, i32 1, !48, i32 1, !72}
!160 = distinct !{!160, !23}
!161 = distinct !{!161, !23}
