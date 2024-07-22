; ModuleID = './build/bin/fixed/atax/16/atax-standard-16-fixed-16.out.ll.4.taffotmp.ll'
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
  %A.u3_29fixp = alloca [20 x [22 x i32]], align 4, !taffo.info !42
  %x.u6_26fixp = alloca [22 x i32], align 4, !taffo.info !45
  %y.u15_17fixp = alloca [22 x i32], align 4, !taffo.info !48, !taffo.target !50
  %tmp.u10_22fixp = alloca [20 x i32], align 4, !taffo.info !51
  %arraydecay.u3_29fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay5.u6_26fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u6_26fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay6.u15_17fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u15_17fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  %arraydecay7.u10_22fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u10_22fixp, i32 0, i32 0, !taffo.info !51
  call void @init_array.5_fixp(i32 20, i32 22, [22 x i32]* %arraydecay.u3_29fixp, i32* %arraydecay5.u6_26fixp, i32* %arraydecay6.u15_17fixp, i32* %arraydecay7.u10_22fixp), !taffo.info !54, !taffo.constinfo !55
  %arraydecay8.u3_29fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !42
  %u3_29fixp = bitcast [22 x i32]* %arraydecay8.u3_29fixp to i32*, !taffo.info !42
  call void @scale_2d.6_fixp(i32 20, i32 22, i32* %u3_29fixp, i32 16), !taffo.info !54, !taffo.constinfo !56
  %arraydecay9.u6_26fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u6_26fixp, i32 0, i32 0, !taffo.info !45
  call void @scale_1d.1_fixp(i32 22, i32* %arraydecay9.u6_26fixp, i32 16), !taffo.info !57, !taffo.constinfo !58
  %arraydecay10.u15_17fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u15_17fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  call void @scale_1d.2_fixp(i32 22, i32* %arraydecay10.u15_17fixp, i32 16), !taffo.info !59, !taffo.constinfo !58, !taffo.target !50
  %arraydecay11.u10_22fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u10_22fixp, i32 0, i32 0, !taffo.info !51
  call void @scale_1d.4_fixp(i32 20, i32* %arraydecay11.u10_22fixp, i32 16), !taffo.info !60, !taffo.constinfo !58
  call void @timer_start(), !taffo.constinfo !61
  %arraydecay12.u3_29fixp = getelementptr inbounds [20 x [22 x i32]], [20 x [22 x i32]]* %A.u3_29fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay13.u6_26fixp = getelementptr inbounds [22 x i32], [22 x i32]* %x.u6_26fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay14.u15_17fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u15_17fixp, i32 0, i32 0, !taffo.info !48, !taffo.target !50
  %arraydecay15.u10_22fixp = getelementptr inbounds [20 x i32], [20 x i32]* %tmp.u10_22fixp, i32 0, i32 0, !taffo.info !51
  call void @kernel_atax.3_fixp(i32 20, i32 22, [22 x i32]* %arraydecay12.u3_29fixp, i32* %arraydecay13.u6_26fixp, i32* %arraydecay14.u15_17fixp, i32* %arraydecay15.u10_22fixp), !taffo.info !54, !taffo.constinfo !55
  call void @timer_stop(), !taffo.constinfo !61
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !62
  %cmp = icmp slt i32 %i.0, 22, !taffo.info !64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u15_17fixp = getelementptr inbounds [22 x i32], [22 x i32]* %y.u15_17fixp, i32 0, i32 %i.0, !taffo.info !48, !taffo.target !50
  %u15_17fixp = load i32, i32* %arrayidx.u15_17fixp, align 4, !taffo.info !48, !taffo.target !50
  %0 = uitofp i32 %u15_17fixp to float, !taffo.info !48, !taffo.target !50
  %1 = fdiv float %0, 1.310720e+05, !taffo.info !48, !taffo.target !50
  %arrayidx16 = getelementptr inbounds [22 x float], [22 x float]* @y_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx16, align 4, !taffo.info !59, !taffo.target !50
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !66, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 22, float* noundef getelementptr inbounds ([22 x float], [22 x float]* @y_float, i32 0, i32 0)), !taffo.constinfo !69
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %y) #0 !taffo.initweight !24 !taffo.funinfo !70 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !75, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !73
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !taffo.constinfo !69
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), double noundef %conv), !taffo.constinfo !58
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !78 !taffo.funinfo !79 !taffo.sourceFunction !82 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !45
  %u6_26fixp = load i32, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !45
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !83
  %0 = lshr i32 %u6_26fixp, 1, !taffo.info !45
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !83
  %2 = ashr i32 %0, 3, !taffo.info !45
  %3 = ashr i32 %1, 4, !taffo.info !83
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 22), !taffo.info !85
  %mul.u9_23fixp = shl i32 %4, 1, !taffo.info !88
  %arrayidx1.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %i.0, !taffo.info !45
  %5 = shl i32 %mul.u9_23fixp, 3, !taffo.info !88
  store i32 %5, i32* %arrayidx1.u6_26fixp, align 4, !taffo.info !57
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2_fixp(i32 noundef %n, i32* noundef %val.u15_17fixp, i32 noundef %factor) #0 !taffo.initweight !78 !taffo.funinfo !91 !taffo.sourceFunction !82 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u15_17fixp = getelementptr inbounds i32, i32* %val.u15_17fixp, i32 %i.0, !taffo.info !48
  %u15_17fixp = load i32, i32* %arrayidx.u15_17fixp, align 4, !taffo.info !48
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !83
  %0 = lshr i32 %u15_17fixp, 1, !taffo.info !48
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !83
  %2 = ashr i32 %0, 4, !taffo.info !48
  %3 = ashr i32 %1, 14, !taffo.info !83
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 12), !taffo.info !92
  %mul.u19_13fixp = shl i32 %4, 1, !taffo.info !95
  %arrayidx1.u15_17fixp = getelementptr inbounds i32, i32* %val.u15_17fixp, i32 %i.0, !taffo.info !48
  %5 = shl i32 %mul.u19_13fixp, 4, !taffo.info !95
  store i32 %5, i32* %arrayidx1.u15_17fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_atax.3_fixp(i32 noundef %m, i32 noundef %n, [22 x i32]* noundef %A.u3_29fixp, i32* noundef %x.u6_26fixp, i32* noundef %y.u15_17fixp, i32* noundef %tmp.u10_22fixp) #0 !taffo.initweight !98 !taffo.funinfo !99 !taffo.sourceFunction !102 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u15_17fixp = getelementptr inbounds i32, i32* %y.u15_17fixp, i32 %i.0, !taffo.info !48
  store i32 0, i32* %arrayidx.u15_17fixp, align 4, !taffo.info !103, !taffo.constinfo !104
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc29, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc30, %for.inc29 ], !taffo.info !64
  %cmp2 = icmp slt i32 %i.1, %m, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end31

for.body3:                                        ; preds = %for.cond1
  %arrayidx4.u10_22fixp = getelementptr inbounds i32, i32* %tmp.u10_22fixp, i32 %i.1, !taffo.info !51
  store i32 0, i32* %arrayidx4.u10_22fixp, align 4, !taffo.info !103, !taffo.constinfo !104
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc14, %for.inc13 ], !taffo.info !64
  %cmp6 = icmp slt i32 %j.0, %n, !taffo.info !73
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u10_22fixp = getelementptr inbounds i32, i32* %tmp.u10_22fixp, i32 %i.1, !taffo.info !51
  %u10_22fixp = load i32, i32* %arrayidx8.u10_22fixp, align 4, !taffo.info !106
  %arrayidx9.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u3_29fixp, i32 %i.1, !taffo.info !42
  %arrayidx10.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx9.u3_29fixp, i32 0, i32 %j.0, !taffo.info !42
  %u3_29fixp = load i32, i32* %arrayidx10.u3_29fixp, align 4, !taffo.info !42
  %arrayidx11.u6_26fixp = getelementptr inbounds i32, i32* %x.u6_26fixp, i32 %j.0, !taffo.info !45
  %u6_26fixp = load i32, i32* %arrayidx11.u6_26fixp, align 4, !taffo.info !108
  %0 = lshr i32 %u3_29fixp, 1, !taffo.info !42
  %1 = lshr i32 %u6_26fixp, 1, !taffo.info !108
  %2 = ashr i32 %0, 4, !taffo.info !42
  %3 = ashr i32 %1, 1, !taffo.info !108
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 24), !taffo.info !110
  %mul.u7_25fixp = shl i32 %4, 1, !taffo.info !113
  %5 = lshr i32 %u10_22fixp, 1, !taffo.info !106
  %6 = lshr i32 %mul.u7_25fixp, 4, !taffo.info !113
  %add.u11_21fixp = add i32 %5, %6, !taffo.info !114
  %arrayidx12.u10_22fixp = getelementptr inbounds i32, i32* %tmp.u10_22fixp, i32 %i.1, !taffo.info !51
  %7 = shl i32 %add.u11_21fixp, 1, !taffo.info !114
  store i32 %7, i32* %arrayidx12.u10_22fixp, align 4, !taffo.info !60
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %inc14 = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !116

for.end15:                                        ; preds = %for.cond5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.end15
  %j.1 = phi i32 [ 0, %for.end15 ], [ %inc27, %for.inc26 ], !taffo.info !64
  %cmp17 = icmp slt i32 %j.1, %n, !taffo.info !73
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  %arrayidx19.u15_17fixp = getelementptr inbounds i32, i32* %y.u15_17fixp, i32 %j.1, !taffo.info !48
  %u15_17fixp = load i32, i32* %arrayidx19.u15_17fixp, align 4, !taffo.info !117
  %arrayidx20.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u3_29fixp, i32 %i.1, !taffo.info !42
  %arrayidx21.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx20.u3_29fixp, i32 0, i32 %j.1, !taffo.info !42
  %u3_29fixp2 = load i32, i32* %arrayidx21.u3_29fixp, align 4, !taffo.info !42
  %arrayidx22.u10_22fixp = getelementptr inbounds i32, i32* %tmp.u10_22fixp, i32 %i.1, !taffo.info !51
  %u10_22fixp1 = load i32, i32* %arrayidx22.u10_22fixp, align 4, !taffo.info !119
  %8 = lshr i32 %u3_29fixp2, 1, !taffo.info !42
  %9 = lshr i32 %u10_22fixp1, 1, !taffo.info !119
  %10 = ashr i32 %8, 9, !taffo.info !42
  %11 = ashr i32 %9, 2, !taffo.info !119
  %12 = call i32 @llvm.smul.fix.i32(i32 %10, i32 %11, i32 19), !taffo.info !121
  %mul23.u12_20fixp = shl i32 %12, 1, !taffo.info !124
  %13 = lshr i32 %u15_17fixp, 1, !taffo.info !117
  %14 = lshr i32 %mul23.u12_20fixp, 4, !taffo.info !124
  %add24.u16_16fixp = add i32 %13, %14, !taffo.info !125
  %arrayidx25.u15_17fixp = getelementptr inbounds i32, i32* %y.u15_17fixp, i32 %j.1, !taffo.info !48
  %15 = shl i32 %add24.u16_16fixp, 1, !taffo.info !125
  store i32 %15, i32* %arrayidx25.u15_17fixp, align 4, !taffo.info !59
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !127

for.end28:                                        ; preds = %for.cond16
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !128

for.end31:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.4_fixp(i32 noundef %n, i32* noundef %val.u10_22fixp, i32 noundef %factor) #0 !taffo.initweight !78 !taffo.funinfo !129 !taffo.sourceFunction !82 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %i.0, !taffo.info !51
  %u10_22fixp = load i32, i32* %arrayidx.u10_22fixp, align 4, !taffo.info !51
  %conv.u5_27fixp = shl i32 %factor, 27, !taffo.info !83
  %0 = lshr i32 %u10_22fixp, 1, !taffo.info !51
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !83
  %2 = ashr i32 %0, 4, !taffo.info !51
  %3 = ashr i32 %1, 9, !taffo.info !83
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 17), !taffo.info !130
  %mul.u14_18fixp = shl i32 %4, 1, !taffo.info !133
  %arrayidx1.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %i.0, !taffo.info !51
  %5 = shl i32 %mul.u14_18fixp, 4, !taffo.info !133
  store i32 %5, i32* %arrayidx1.u10_22fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !135

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5_fixp(i32 noundef %m, i32 noundef %n, [22 x i32]* noundef %A.u3_29fixp, i32* noundef %x.u6_26fixp, i32* noundef %y.u15_17fixp, i32* noundef %tmp.u10_22fixp) #0 !taffo.initweight !98 !taffo.funinfo !99 !taffo.sourceFunction !136 {
entry:
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !137
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !138, !taffo.initweight !140
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !141, !taffo.initweight !142
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !138, !taffo.initweight !143

for.body:                                         ; preds = %for.cond
  %conv5.u5_27fixp = shl i32 %i.0, 27, !taffo.info !144
  %0 = lshr i32 %conv5.u5_27fixp, 1, !taffo.info !144
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !137
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !145
  %div.u2_30fixp = shl i32 %2, 4, !taffo.info !147
  %3 = lshr i32 -2147483648, 1
  %add.u2_30fixp = add i32 %3, %div.u2_30fixp, !taffo.info !149, !taffo.constinfo !151
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %x.u6_26fixp, i32 %i.0, !taffo.info !152
  %4 = lshr i32 %add.u2_30fixp, 4, !taffo.info !149, !taffo.constinfo !151
  store i32 %4, i32* %arrayidx.u6_26fixp, align 4, !taffo.info !103
  %arrayidx6.u15_17fixp = getelementptr inbounds i32, i32* %y.u15_17fixp, i32 %i.0, !taffo.info !153
  store i32 0, i32* %arrayidx6.u15_17fixp, align 4, !taffo.info !103, !taffo.constinfo !104
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !154, !taffo.initweight !142, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !155

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ], !taffo.info !138, !taffo.initweight !140
  %cmp8 = icmp slt i32 %i.1, %m, !taffo.info !141, !taffo.initweight !142
  br i1 %cmp8, label %for.body10, label %for.end27, !taffo.info !138, !taffo.initweight !143

for.body10:                                       ; preds = %for.cond7
  %arrayidx11.u10_22fixp = getelementptr inbounds i32, i32* %tmp.u10_22fixp, i32 %i.1, !taffo.info !156
  store i32 0, i32* %arrayidx11.u10_22fixp, align 4, !taffo.info !103, !taffo.constinfo !104
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc22, %for.body10
  %j.0 = phi i32 [ 0, %for.body10 ], [ %inc23, %for.inc22 ], !taffo.info !138, !taffo.initweight !140
  %cmp13 = icmp slt i32 %j.0, %n, !taffo.info !141, !taffo.initweight !142
  br i1 %cmp13, label %for.body15, label %for.end24, !taffo.info !138, !taffo.initweight !143

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %i.1, %j.0, !taffo.info !157, !taffo.initweight !142
  %rem = srem i32 %add16, %n, !taffo.info !159, !taffo.initweight !143
  %conv17.u5_27fixp = shl i32 %rem, 27, !taffo.info !161
  %mul = mul nsw i32 5, %m, !taffo.info !162, !taffo.constinfo !21
  %conv18.u7_25fixp = shl i32 %mul, 25, !taffo.info !164, !taffo.constinfo !21
  %5 = lshr i32 %conv17.u5_27fixp, 1, !taffo.info !161
  %6 = lshr i32 %conv18.u7_25fixp, 1, !taffo.info !164, !taffo.constinfo !21
  %7 = ashr i32 %5, 2, !taffo.info !161
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 24), !taffo.info !165
  %div19.u1_31fixp = shl i32 %8, 7, !taffo.info !167
  %arrayidx20.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %A.u3_29fixp, i32 %i.1, !taffo.info !169
  %arrayidx21.u3_29fixp = getelementptr inbounds [22 x i32], [22 x i32]* %arrayidx20.u3_29fixp, i32 0, i32 %j.0, !taffo.info !169
  %9 = lshr i32 %div19.u1_31fixp, 2, !taffo.info !167
  store i32 %9, i32* %arrayidx21.u3_29fixp, align 4, !taffo.info !103
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %inc23 = add nsw i32 %j.0, 1, !taffo.info !154, !taffo.initweight !142, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !170

for.end24:                                        ; preds = %for.cond12
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %inc26 = add nsw i32 %i.1, 1, !taffo.info !154, !taffo.initweight !142, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !171

for.end27:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u3_29fixp, i32 noundef %factor) #0 !taffo.initweight !172 !taffo.funinfo !173 !taffo.sourceFunction !174 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !73
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !64
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !73
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %0, !taffo.info !42
  %arrayidx4.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx.u3_29fixp, i32 %j.0, !taffo.info !42
  %u3_29fixp = load i32, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !42
  %conv.u6_26fixp = shl i32 %factor, 26, !taffo.info !175
  %1 = lshr i32 %u3_29fixp, 1, !taffo.info !42
  %2 = lshr i32 %conv.u6_26fixp, 1, !taffo.info !175
  %3 = ashr i32 %1, 3, !taffo.info !42
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 25), !taffo.info !176
  %mul.u6_26fixp = shl i32 %4, 1, !taffo.info !179
  %5 = mul nsw i32 %i.0, %m, !taffo.info !75
  %arrayidx5.u3_29fixp = getelementptr inbounds i32, i32* %val.u3_29fixp, i32 %5, !taffo.info !42
  %arrayidx6.u3_29fixp = getelementptr inbounds i32, i32* %arrayidx5.u3_29fixp, i32 %j.0, !taffo.info !42
  %6 = shl i32 %mul.u6_26fixp, 3, !taffo.info !179
  store i32 %6, i32* %arrayidx6.u3_29fixp, align 4, !taffo.info !54
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !180

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !181

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
!1 = !{double 0.000000e+00, double 0x40DEC418A00192A7}
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
!28 = distinct !{null, null, null}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = distinct !{null}
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
!43 = !{!"fixp", i32 32, i32 29}
!44 = !{double 0.000000e+00, double 3.360000e+00}
!45 = !{!46, !47, i1 false, i2 -1}
!46 = !{!"fixp", i32 32, i32 26}
!47 = !{double 1.600000e+01, double 0x403F45D18090B418}
!48 = !{!49, !1, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 17}
!50 = !{!"y"}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 22}
!53 = !{double 0.000000e+00, double 0x408E851EC02F2F98}
!54 = !{i1 false, !44, i1 false, i2 -1}
!55 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false, !47, i1 false, i2 -1}
!58 = !{i1 false, i1 false, i1 false, i1 false}
!59 = !{i1 false, !1, i1 false, i2 -1}
!60 = !{i1 false, !53, i1 false, i2 -1}
!61 = !{i1 false}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 2.300000e+01}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 1.000000e+00, double 2.300000e+01}
!68 = distinct !{!68, !23}
!69 = !{i1 false, i1 false, i1 false}
!70 = !{i32 1, !71, i32 1, !0}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 2.200000e+01, double 2.200000e+01}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 0.000000e+00}
!77 = distinct !{!77, !23}
!78 = !{i32 -1, i32 2, i32 -1}
!79 = !{i32 1, !71, i32 1, !45, i32 1, !80}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.600000e+01, double 1.600000e+01}
!82 = !{void (i32, float*, i32)* @scale_1d}
!83 = !{!84, !81, i1 false, i2 1}
!84 = !{!"fixp", i32 32, i32 27}
!85 = !{!86, !87, i1 false, i2 -1}
!86 = !{!"fixp", i32 -32, i32 22}
!87 = !{double 2.560000e+02, double 0x407F45D18090B418}
!88 = !{!89, !87, i1 false, i2 -1}
!89 = !{!"fixp", i32 32, i32 23}
!90 = distinct !{!90, !23}
!91 = !{i32 1, !71, i32 1, !48, i32 1, !80}
!92 = !{!93, !94, i1 false, i2 -1}
!93 = !{!"fixp", i32 -32, i32 12}
!94 = !{double 0.000000e+00, double 0x411EC418A00192A7}
!95 = !{!96, !94, i1 false, i2 -1}
!96 = !{!"fixp", i32 32, i32 13}
!97 = distinct !{!97, !23}
!98 = !{i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2}
!99 = !{i32 1, !100, i32 1, !71, i32 1, !42, i32 1, !45, i32 1, !48, i32 1, !51}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 2.000000e+01, double 2.000000e+01}
!102 = distinct !{null}
!103 = !{i1 false, i1 false, i1 false, i2 1}
!104 = !{!75, i1 false}
!105 = distinct !{!105, !23}
!106 = !{!107, !53, i1 false, i2 -1}
!107 = !{!"fixp", i32 32, i32 21}
!108 = !{!109, !47, i1 false, i2 -1}
!109 = !{!"fixp", i32 32, i32 25}
!110 = !{!111, !112, i1 false, i2 -1}
!111 = !{!"fixp", i32 -32, i32 24}
!112 = !{double 0.000000e+00, double 0x405A44E32E8E07EB}
!113 = !{!109, !112, i1 false, i2 -1}
!114 = !{!107, !115, i1 false, i2 -1}
!115 = !{double 0.000000e+00, double 0x4090E6DD9300784B}
!116 = distinct !{!116, !23}
!117 = !{!118, !1, i1 false, i2 -1}
!118 = !{!"fixp", i32 32, i32 16}
!119 = !{!120, !53, i1 false, i2 -1}
!120 = !{!"fixp", i32 32, i32 20}
!121 = !{!122, !123, i1 false, i2 -1}
!122 = !{!"fixp", i32 -32, i32 19}
!123 = !{double 0.000000e+00, double 0x40A9A30559C13C75}
!124 = !{!120, !123, i1 false, i2 -1}
!125 = !{!118, !126, i1 false, i2 -1}
!126 = !{double 0.000000e+00, double 0x40E0FC3CA59CDD1B}
!127 = distinct !{!127, !23}
!128 = distinct !{!128, !23}
!129 = !{i32 1, !100, i32 1, !51, i32 1, !80}
!130 = !{!131, !132, i1 false, i2 -1}
!131 = !{!"fixp", i32 -32, i32 17}
!132 = !{double 0.000000e+00, double 0x40CE851EC02F2F98}
!133 = !{!134, !132, i1 false, i2 -1}
!134 = !{!"fixp", i32 32, i32 18}
!135 = distinct !{!135, !23}
!136 = distinct !{null}
!137 = !{!84, !72, i1 false, i2 1}
!138 = !{i1 false, !139, i1 false, i2 -1}
!139 = !{double 0.000000e+00, double 2.200000e+01}
!140 = !{i32 0}
!141 = !{i1 false, !65, i1 false, i2 -1}
!142 = !{i32 2}
!143 = !{i32 3}
!144 = !{!84, !139, i1 false, i2 -1}
!145 = !{!146, !65, i1 false, i2 1}
!146 = !{!"fixp", i32 -32, i32 26}
!147 = !{!148, !65, i1 false, i2 1}
!148 = !{!"fixp", i32 32, i32 30}
!149 = !{!148, !150, i1 false, i2 1}
!150 = !{double 1.000000e+00, double 2.000000e+00}
!151 = !{!73, i1 false}
!152 = !{!46, !47, i1 false, i2 1}
!153 = !{!49, !1, i1 false, i2 1}
!154 = !{i1 false, !67, i1 false, i2 -1}
!155 = distinct !{!155, !23}
!156 = !{!52, !53, i1 false, i2 1}
!157 = !{i1 false, !158, i1 false, i2 -1}
!158 = !{double 0.000000e+00, double 4.400000e+01}
!159 = !{i1 false, !160, i1 false, i2 -1}
!160 = !{double 0.000000e+00, double 2.100000e+01}
!161 = !{!84, !160, i1 false, i2 -1}
!162 = !{i1 false, !163, i1 false, i2 0}
!163 = !{double 1.000000e+02, double 1.000000e+02}
!164 = !{!109, !163, i1 false, i2 1}
!165 = !{!111, !166, i1 false, i2 -1}
!166 = !{double 0.000000e+00, double 2.100000e-01}
!167 = !{!168, !166, i1 false, i2 -1}
!168 = !{!"fixp", i32 32, i32 31}
!169 = !{!43, !44, i1 false, i2 1}
!170 = distinct !{!170, !23}
!171 = distinct !{!171, !23}
!172 = !{i32 -1, i32 -1, i32 3, i32 -1}
!173 = !{i32 1, !100, i32 1, !71, i32 1, !42, i32 1, !80}
!174 = !{void (i32, i32, float*, i32)* @scale_2d}
!175 = !{!46, !81, i1 false, i2 1}
!176 = !{!177, !178, i1 false, i2 -1}
!177 = !{!"fixp", i32 -32, i32 25}
!178 = !{double 0.000000e+00, double 5.376000e+01}
!179 = !{!46, !178, i1 false, i2 -1}
!180 = distinct !{!180, !23}
!181 = distinct !{!181, !23}
