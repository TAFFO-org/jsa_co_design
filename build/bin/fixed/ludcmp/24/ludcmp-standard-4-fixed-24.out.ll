; ModuleID = './build/bin/fixed/ludcmp/24/ludcmp-standard-4-fixed-24.out.ll.4.taffotmp.ll'
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
  %A.u6_26fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !42
  %B.u6_26fixp = alloca [20 x [20 x i32]], align 4, !taffo.info !45
  %b.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !47
  %x.s4_28fixp = alloca [20 x i32], align 4, !taffo.info !50, !taffo.target !52
  %y.u5_27fixp = alloca [20 x i32], align 4, !taffo.info !53
  %arraydecay.u6_26fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u6_26fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay6.u6_26fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u6_26fixp, i32 0, i32 0, !taffo.info !45
  %arraydecay7.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %b.u5_27fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay8.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !52
  %arraydecay9.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u5_27fixp, i32 0, i32 0, !taffo.info !53
  call void @init_array.5_fixp(i32 20, [20 x i32]* %arraydecay.u6_26fixp, [20 x i32]* %arraydecay6.u6_26fixp, i32* %arraydecay7.u5_27fixp, i32* %arraydecay8.s4_28fixp, i32* %arraydecay9.u5_27fixp), !taffo.info !55, !taffo.constinfo !56
  %arraydecay10.u6_26fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u6_26fixp, i32 0, i32 0, !taffo.info !42
  %u6_26fixp1 = bitcast [20 x i32]* %arraydecay10.u6_26fixp to i32*, !taffo.info !42
  call void @scale_2d.6_fixp(i32 20, i32 20, i32* %u6_26fixp1, i32 4), !taffo.info !55, !taffo.constinfo !57
  %arraydecay11.u6_26fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %B.u6_26fixp, i32 0, i32 0, !taffo.info !45
  %u6_26fixp = bitcast [20 x i32]* %arraydecay11.u6_26fixp to i32*, !taffo.info !45
  call void @scale_2d.6_fixp(i32 20, i32 20, i32* %u6_26fixp, i32 4), !taffo.info !58, !taffo.constinfo !57
  %arraydecay12.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %b.u5_27fixp, i32 0, i32 0, !taffo.info !47
  call void @scale_1d.1_fixp(i32 20, i32* %arraydecay12.u5_27fixp, i32 4), !taffo.info !59, !taffo.constinfo !60
  %arraydecay13.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !52
  call void @scale_1d.2_fixp(i32 20, i32* %arraydecay13.s4_28fixp, i32 4), !taffo.info !61, !taffo.constinfo !60, !taffo.target !52
  %arraydecay14.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u5_27fixp, i32 0, i32 0, !taffo.info !53
  call void @scale_1d.1_fixp(i32 20, i32* %arraydecay14.u5_27fixp, i32 4), !taffo.info !62, !taffo.constinfo !60
  call void @timer_start(), !taffo.constinfo !63
  %arraydecay15.u6_26fixp = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* %A.u6_26fixp, i32 0, i32 0, !taffo.info !42
  %arraydecay16.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %b.u5_27fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay17.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 0, !taffo.info !50, !taffo.target !52
  %arraydecay18.u5_27fixp = getelementptr inbounds [20 x i32], [20 x i32]* %y.u5_27fixp, i32 0, i32 0, !taffo.info !53
  call void @kernel_ludcmp.3_fixp(i32 20, [20 x i32]* %arraydecay15.u6_26fixp, i32* %arraydecay16.u5_27fixp, i32* %arraydecay17.s4_28fixp, i32* %arraydecay18.u5_27fixp), !taffo.info !55, !taffo.constinfo !64
  call void @timer_stop(), !taffo.constinfo !63
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !65
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !67
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.s4_28fixp = getelementptr inbounds [20 x i32], [20 x i32]* %x.s4_28fixp, i32 0, i32 %i.0, !taffo.info !50, !taffo.target !52
  %s4_28fixp = load i32, i32* %arrayidx.s4_28fixp, align 4, !taffo.info !50, !taffo.target !52
  %0 = sitofp i32 %s4_28fixp to float, !taffo.info !50, !taffo.target !52
  %1 = fdiv float %0, 0x41B0000000000000, !taffo.info !50, !taffo.target !52
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !0
  store float %1, float* %arrayidx19, align 4, !taffo.info !61, !taffo.target !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !69, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0)), !taffo.constinfo !72
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x) #0 !taffo.initweight !24 !taffo.funinfo !73 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !78, !taffo.constinfo !21
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !76
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !72
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !0
  %2 = load float, float* %arrayidx, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !60
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.1_fixp(i32 noundef %n, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !81 !taffo.funinfo !82 !taffo.sourceFunction !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !47
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !86
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !88
  %0 = lshr i32 %u5_27fixp, 1, !taffo.info !86
  %1 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !88
  %2 = ashr i32 %0, 2, !taffo.info !86
  %3 = ashr i32 %1, 4, !taffo.info !88
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 24), !taffo.info !90
  %mul.u7_25fixp = shl i32 %4, 1, !taffo.info !93
  %arrayidx1.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %i.0, !taffo.info !47
  %5 = shl i32 %mul.u7_25fixp, 2, !taffo.info !93
  store i32 %5, i32* %arrayidx1.u5_27fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_1d.2_fixp(i32 noundef %n, i32* noundef %val.s4_28fixp, i32 noundef %factor) #0 !taffo.initweight !81 !taffo.funinfo !95 !taffo.sourceFunction !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.s4_28fixp = getelementptr inbounds i32, i32* %val.s4_28fixp, i32 %i.0, !taffo.info !50
  %s4_28fixp = load i32, i32* %arrayidx.s4_28fixp, align 4, !taffo.info !96
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !88
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !88
  %1 = ashr i32 %s4_28fixp, 2, !taffo.info !96
  %2 = ashr i32 %0, 2, !taffo.info !88
  %mul.s6_26fixp = call i32 @llvm.smul.fix.i32(i32 %1, i32 %2, i32 26), !taffo.info !98
  %arrayidx1.s4_28fixp = getelementptr inbounds i32, i32* %val.s4_28fixp, i32 %i.0, !taffo.info !50
  %3 = shl i32 %mul.s6_26fixp, 2, !taffo.info !98
  store i32 %3, i32* %arrayidx1.s4_28fixp, align 4, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !100

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.3_fixp(i32 noundef %n, [20 x i32]* noundef %A.u6_26fixp, i32* noundef %b.u5_27fixp, i32* noundef %x.s4_28fixp, i32* noundef %y.u5_27fixp) #0 !taffo.initweight !101 !taffo.funinfo !102 !taffo.sourceFunction !103 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !67
  %cmp3 = icmp slt i32 %j.0, %i.0, !taffo.info !78
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %arrayidx.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.0, !taffo.info !42
  %arrayidx5.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx.u6_26fixp, i32 0, i32 %j.0, !taffo.info !42
  %u6_26fixp = load i32, i32* %arrayidx5.u6_26fixp, align 4, !taffo.info !104
  %0 = lshr i32 %u6_26fixp, 3, !taffo.info !104
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ], !taffo.info !67
  %w.0.s9_23fixp = phi i32 [ %0, %for.body4 ], [ %6, %for.inc ], !taffo.info !104
  %cmp7 = icmp slt i32 %k.0, %j.0, !taffo.info !78
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx9.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.0, !taffo.info !42
  %arrayidx10.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx9.u6_26fixp, i32 0, i32 %k.0, !taffo.info !42
  %u6_26fixp9 = load i32, i32* %arrayidx10.u6_26fixp, align 4, !taffo.info !42
  %arrayidx11.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %k.0, !taffo.info !42
  %arrayidx12.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx11.u6_26fixp, i32 0, i32 %j.0, !taffo.info !42
  %u6_26fixp10 = load i32, i32* %arrayidx12.u6_26fixp, align 4, !taffo.info !42
  %1 = lshr i32 %u6_26fixp9, 1, !taffo.info !42
  %2 = lshr i32 %u6_26fixp10, 1, !taffo.info !42
  %3 = ashr i32 %1, 5, !taffo.info !42
  %4 = ashr i32 %2, 5, !taffo.info !42
  %mul.s12_20fixp = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 20), !taffo.info !107
  %5 = ashr i32 %w.0.s9_23fixp, 3, !taffo.info !104
  %sub.s12_20fixp = sub i32 %5, %mul.s12_20fixp, !taffo.info !110
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !taffo.info !76, !taffo.constinfo !21
  %6 = shl i32 %sub.s12_20fixp, 3, !taffo.info !110
  br label %for.cond6, !llvm.loop !112

for.end:                                          ; preds = %for.cond6
  %arrayidx13.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %j.0, !taffo.info !42
  %arrayidx14.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx13.u6_26fixp, i32 0, i32 %j.0, !taffo.info !42
  %u6_26fixp11 = load i32, i32* %arrayidx14.u6_26fixp, align 4, !taffo.info !42
  %7 = lshr i32 %u6_26fixp11, 1, !taffo.info !42
  %8 = ashr i32 %w.0.s9_23fixp, 3, !taffo.info !104
  %9 = ashr i32 %7, 5, !taffo.info !42
  %div.s12_20fixp = call i32 @llvm.sdiv.fix.i32(i32 %8, i32 %9, i32 20), !taffo.info !113
  %arrayidx15.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.0, !taffo.info !42
  %arrayidx16.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx15.u6_26fixp, i32 0, i32 %j.0, !taffo.info !42
  %10 = shl i32 %div.s12_20fixp, 6, !taffo.info !113
  store i32 %10, i32* %arrayidx16.u6_26fixp, align 4, !taffo.info !115
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !116

for.end19:                                        ; preds = %for.cond2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !67
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !76
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %arrayidx23.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.0, !taffo.info !42
  %arrayidx24.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23.u6_26fixp, i32 0, i32 %j.1, !taffo.info !42
  %u6_26fixp12 = load i32, i32* %arrayidx24.u6_26fixp, align 4, !taffo.info !104
  %11 = lshr i32 %u6_26fixp12, 3, !taffo.info !104
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc35, %for.inc34 ], !taffo.info !67
  %w.1.s9_23fixp = phi i32 [ %11, %for.body22 ], [ %17, %for.inc34 ], !taffo.info !104
  %cmp26 = icmp slt i32 %k.1, %i.0, !taffo.info !78
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %arrayidx28.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.0, !taffo.info !42
  %arrayidx29.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx28.u6_26fixp, i32 0, i32 %k.1, !taffo.info !42
  %u6_26fixp13 = load i32, i32* %arrayidx29.u6_26fixp, align 4, !taffo.info !42
  %arrayidx30.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %k.1, !taffo.info !42
  %arrayidx31.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx30.u6_26fixp, i32 0, i32 %j.1, !taffo.info !42
  %u6_26fixp14 = load i32, i32* %arrayidx31.u6_26fixp, align 4, !taffo.info !42
  %12 = lshr i32 %u6_26fixp13, 1, !taffo.info !42
  %13 = lshr i32 %u6_26fixp14, 1, !taffo.info !42
  %14 = ashr i32 %12, 5, !taffo.info !42
  %15 = ashr i32 %13, 5, !taffo.info !42
  %mul32.s12_20fixp = call i32 @llvm.smul.fix.i32(i32 %14, i32 %15, i32 20), !taffo.info !107
  %16 = ashr i32 %w.1.s9_23fixp, 3, !taffo.info !104
  %sub33.s12_20fixp = sub i32 %16, %mul32.s12_20fixp, !taffo.info !110
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %inc35 = add nsw i32 %k.1, 1, !taffo.info !76, !taffo.constinfo !21
  %17 = shl i32 %sub33.s12_20fixp, 3, !taffo.info !110
  br label %for.cond25, !llvm.loop !117

for.end36:                                        ; preds = %for.cond25
  %arrayidx37.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.0, !taffo.info !42
  %arrayidx38.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx37.u6_26fixp, i32 0, i32 %j.1, !taffo.info !42
  %18 = shl i32 %w.1.s9_23fixp, 3, !taffo.info !104
  store i32 %18, i32* %arrayidx38.u6_26fixp, align 4, !taffo.info !115
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !118

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !119

for.end44:                                        ; preds = %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %i.1 = phi i32 [ 0, %for.end44 ], [ %inc62, %for.inc61 ], !taffo.info !67
  %cmp46 = icmp slt i32 %i.1, %n, !taffo.info !76
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %arrayidx48.u5_27fixp = getelementptr inbounds i32, i32* %b.u5_27fixp, i32 %i.1, !taffo.info !47
  %u5_27fixp = load i32, i32* %arrayidx48.u5_27fixp, align 4, !taffo.info !104
  %19 = lshr i32 %u5_27fixp, 6, !taffo.info !104
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %j.2 = phi i32 [ 0, %for.body47 ], [ %inc58, %for.inc57 ], !taffo.info !67
  %w.2.s11_21fixp = phi i32 [ %19, %for.body47 ], [ %sub56.s11_21fixp, %for.inc57 ], !taffo.info !120
  %cmp50 = icmp slt i32 %j.2, %i.1, !taffo.info !78
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %arrayidx52.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.1, !taffo.info !42
  %arrayidx53.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx52.u6_26fixp, i32 0, i32 %j.2, !taffo.info !42
  %u6_26fixp15 = load i32, i32* %arrayidx53.u6_26fixp, align 4, !taffo.info !42
  %arrayidx54.u5_27fixp = getelementptr inbounds i32, i32* %y.u5_27fixp, i32 %j.2, !taffo.info !53
  %u5_27fixp7 = load i32, i32* %arrayidx54.u5_27fixp, align 4, !taffo.info !53
  %20 = lshr i32 %u6_26fixp15, 1, !taffo.info !42
  %21 = lshr i32 %u5_27fixp7, 1, !taffo.info !53
  %22 = ashr i32 %20, 4, !taffo.info !42
  %23 = ashr i32 %21, 5, !taffo.info !53
  %mul55.s11_21fixp = call i32 @llvm.smul.fix.i32(i32 %22, i32 %23, i32 21), !taffo.info !122
  %sub56.s11_21fixp = sub i32 %w.2.s11_21fixp, %mul55.s11_21fixp, !taffo.info !124
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %j.2, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond49, !llvm.loop !126

for.end59:                                        ; preds = %for.cond49
  %arrayidx60.u5_27fixp = getelementptr inbounds i32, i32* %y.u5_27fixp, i32 %i.1, !taffo.info !53
  %24 = shl i32 %w.2.s11_21fixp, 6, !taffo.info !120
  store i32 %24, i32* %arrayidx60.u5_27fixp, align 4, !taffo.info !115
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond45, !llvm.loop !127

for.end63:                                        ; preds = %for.cond45
  %sub64 = sub nsw i32 %n, 1, !taffo.info !128, !taffo.constinfo !21
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %i.2 = phi i32 [ %sub64, %for.end63 ], [ %dec, %for.inc84 ], !taffo.info !130
  %cmp66 = icmp sge i32 %i.2, 0, !taffo.info !76
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %arrayidx68.u5_27fixp = getelementptr inbounds i32, i32* %y.u5_27fixp, i32 %i.2, !taffo.info !53
  %u5_27fixp8 = load i32, i32* %arrayidx68.u5_27fixp, align 4, !taffo.info !104
  %add = add nsw i32 %i.2, 1, !taffo.info !74, !taffo.constinfo !21
  %25 = lshr i32 %u5_27fixp8, 5, !taffo.info !104
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %j.3 = phi i32 [ %add, %for.body67 ], [ %inc78, %for.inc77 ], !taffo.info !132
  %w.3.s10_22fixp = phi i32 [ %25, %for.body67 ], [ %sub76.s10_22fixp, %for.inc77 ], !taffo.info !134
  %cmp70 = icmp slt i32 %j.3, %n, !taffo.info !78
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx72.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.2, !taffo.info !42
  %arrayidx73.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx72.u6_26fixp, i32 0, i32 %j.3, !taffo.info !42
  %u6_26fixp16 = load i32, i32* %arrayidx73.u6_26fixp, align 4, !taffo.info !42
  %arrayidx74.s4_28fixp = getelementptr inbounds i32, i32* %x.s4_28fixp, i32 %j.3, !taffo.info !50
  %s4_28fixp = load i32, i32* %arrayidx74.s4_28fixp, align 4, !taffo.info !50
  %26 = lshr i32 %u6_26fixp16, 1, !taffo.info !42
  %27 = ashr i32 %26, 3, !taffo.info !42
  %28 = ashr i32 %s4_28fixp, 6, !taffo.info !50
  %mul75.s10_22fixp = call i32 @llvm.smul.fix.i32(i32 %27, i32 %28, i32 22), !taffo.info !136
  %sub76.s10_22fixp = sub i32 %w.3.s10_22fixp, %mul75.s10_22fixp, !taffo.info !138
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !140, !taffo.constinfo !21
  br label %for.cond69, !llvm.loop !142

for.end79:                                        ; preds = %for.cond69
  %arrayidx80.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.2, !taffo.info !42
  %arrayidx81.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx80.u6_26fixp, i32 0, i32 %i.2, !taffo.info !42
  %u6_26fixp17 = load i32, i32* %arrayidx81.u6_26fixp, align 4, !taffo.info !42
  %29 = lshr i32 %u6_26fixp17, 1, !taffo.info !42
  %30 = ashr i32 %w.3.s10_22fixp, 2, !taffo.info !134
  %31 = ashr i32 %29, 5, !taffo.info !42
  %div82.s12_20fixp = call i32 @llvm.sdiv.fix.i32(i32 %30, i32 %31, i32 20), !taffo.info !113
  %arrayidx83.s4_28fixp = getelementptr inbounds i32, i32* %x.s4_28fixp, i32 %i.2, !taffo.info !50
  %32 = shl i32 %div82.s12_20fixp, 8, !taffo.info !113
  store i32 %32, i32* %arrayidx83.s4_28fixp, align 4, !taffo.info !115
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %dec = add nsw i32 %i.2, -1, !taffo.info !143, !taffo.constinfo !21
  br label %for.cond65, !llvm.loop !145

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.5_fixp(i32 noundef %n, [20 x i32]* noundef %A.u6_26fixp, [20 x i32]* noundef %B.u6_26fixp, i32* noundef %b.u5_27fixp, i32* noundef %x.s4_28fixp, i32* noundef %y.u5_27fixp) #0 !taffo.initweight !146 !taffo.funinfo !147 !taffo.sourceFunction !148 {
entry:
  %conv.u5_27fixp = shl i32 %n, 27, !taffo.info !149
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !150, !taffo.initweight !151
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !152, !taffo.initweight !153
  br i1 %cmp, label %for.body, label %for.end, !taffo.info !154, !taffo.initweight !156

for.body:                                         ; preds = %for.cond
  %arrayidx.s4_28fixp = getelementptr inbounds i32, i32* %x.s4_28fixp, i32 %i.0, !taffo.info !157
  store i32 0, i32* %arrayidx.s4_28fixp, align 4, !taffo.info !158, !taffo.constinfo !159
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %y.u5_27fixp, i32 %i.0, !taffo.info !160
  store i32 0, i32* %arrayidx5.u5_27fixp, align 4, !taffo.info !158, !taffo.constinfo !159
  %add = add nsw i32 %i.0, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  %conv6.u5_27fixp = shl i32 %add, 27, !taffo.info !162, !taffo.constinfo !21
  %0 = lshr i32 %conv6.u5_27fixp, 1, !taffo.info !162, !taffo.constinfo !21
  %1 = lshr i32 %conv.u5_27fixp, 1, !taffo.info !149
  %2 = call i32 @llvm.sdiv.fix.i32(i32 %0, i32 %1, i32 26), !taffo.info !163
  %div.u2_30fixp = shl i32 %2, 4, !taffo.info !165
  %3 = lshr i32 %div.u2_30fixp, 1, !taffo.info !165
  %4 = shl i32 2, 29
  %5 = ashr i32 %3, 1, !taffo.info !165
  %6 = ashr i32 %4, 1
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 28), !taffo.info !167
  %div8.u3_29fixp = shl i32 %7, 1, !taffo.info !169, !taffo.constinfo !170
  %add9.u3_29fixp = add i32 %div8.u3_29fixp, -2147483648, !taffo.info !171, !taffo.constinfo !173
  %arrayidx11.u5_27fixp = getelementptr inbounds i32, i32* %b.u5_27fixp, i32 %i.0, !taffo.info !174
  %8 = lshr i32 %add9.u3_29fixp, 2, !taffo.info !171, !taffo.constinfo !173
  store i32 %8, i32* %arrayidx11.u5_27fixp, align 4, !taffo.info !158
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !175

for.end:                                          ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc42, %for.inc41 ], !taffo.info !150, !taffo.initweight !151
  %cmp13 = icmp slt i32 %i.1, %n, !taffo.info !152, !taffo.initweight !153
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.info !154, !taffo.initweight !156

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %j.0 = phi i32 [ 0, %for.body15 ], [ %inc27, %for.inc26 ], !taffo.info !150, !taffo.initweight !151
  %cmp17 = icmp sle i32 %j.0, %i.1, !taffo.info !152, !taffo.initweight !153
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.info !154, !taffo.initweight !156

for.body19:                                       ; preds = %for.cond16
  %sub = sub nsw i32 0, %j.0, !taffo.info !176, !taffo.initweight !153, !taffo.constinfo !21
  %rem = srem i32 %sub, %n, !taffo.info !178, !taffo.initweight !156
  %conv20.s6_26fixp = shl i32 %rem, 26, !taffo.info !180
  %conv21.u5_27fixp = shl i32 %n, 27, !taffo.info !149
  %9 = lshr i32 %conv21.u5_27fixp, 1, !taffo.info !149
  %10 = call i32 @llvm.sdiv.fix.i32(i32 %conv20.s6_26fixp, i32 %9, i32 26), !taffo.info !181
  %div22.s2_30fixp = shl i32 %10, 4, !taffo.info !183
  %11 = lshr i32 -2147483648, 1
  %add23.s2_30fixp = add i32 %div22.s2_30fixp, %11, !taffo.info !185, !taffo.constinfo !187
  %arrayidx24.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.1, !taffo.info !188
  %arrayidx25.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx24.u6_26fixp, i32 0, i32 %j.0, !taffo.info !188
  %12 = ashr i32 %add23.s2_30fixp, 4, !taffo.info !185, !taffo.constinfo !187
  store i32 %12, i32* %arrayidx25.u6_26fixp, align 4, !taffo.info !158
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nsw i32 %j.0, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !189

for.end28:                                        ; preds = %for.cond16
  %add29 = add nsw i32 %i.1, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %j.1 = phi i32 [ %add29, %for.end28 ], [ %inc37, %for.inc36 ], !taffo.info !190, !taffo.initweight !151
  %cmp31 = icmp slt i32 %j.1, %n, !taffo.info !152, !taffo.initweight !153
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.info !154, !taffo.initweight !156

for.body33:                                       ; preds = %for.cond30
  %arrayidx34.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.1, !taffo.info !188
  %arrayidx35.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx34.u6_26fixp, i32 0, i32 %j.1, !taffo.info !188
  store i32 0, i32* %arrayidx35.u6_26fixp, align 4, !taffo.info !158, !taffo.constinfo !159
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %inc37 = add nsw i32 %j.1, 1, !taffo.info !192, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !194

for.end38:                                        ; preds = %for.cond30
  %arrayidx39.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %i.1, !taffo.info !188
  %arrayidx40.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx39.u6_26fixp, i32 0, i32 %i.1, !taffo.info !188
  store i32 67108864, i32* %arrayidx40.u6_26fixp, align 4, !taffo.info !158, !taffo.constinfo !195
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %inc42 = add nsw i32 %i.1, 1, !taffo.info !161, !taffo.initweight !153, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !196

for.end43:                                        ; preds = %for.cond12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %r.0 = phi i32 [ 0, %for.end43 ], [ %inc58, %for.inc57 ], !taffo.info !67
  %cmp45 = icmp slt i32 %r.0, %n, !taffo.info !76
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %s.0 = phi i32 [ 0, %for.body47 ], [ %inc55, %for.inc54 ], !taffo.info !67
  %cmp49 = icmp slt i32 %s.0, %n, !taffo.info !76
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %arrayidx52.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %B.u6_26fixp, i32 %r.0, !taffo.info !45
  %arrayidx53.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx52.u6_26fixp, i32 0, i32 %s.0, !taffo.info !45
  store i32 0, i32* %arrayidx53.u6_26fixp, align 4, !taffo.info !158, !taffo.constinfo !159
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %inc55 = add nsw i32 %s.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !197

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %r.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond44, !llvm.loop !198

for.end59:                                        ; preds = %for.cond44
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %t.0 = phi i32 [ 0, %for.end59 ], [ %inc86, %for.inc85 ], !taffo.info !67
  %cmp61 = icmp slt i32 %t.0, %n, !taffo.info !76
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %r.1 = phi i32 [ 0, %for.body63 ], [ %inc83, %for.inc82 ], !taffo.info !67
  %cmp65 = icmp slt i32 %r.1, %n, !taffo.info !76
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %s.1 = phi i32 [ 0, %for.body67 ], [ %inc80, %for.inc79 ], !taffo.info !67
  %cmp69 = icmp slt i32 %s.1, %n, !taffo.info !76
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %arrayidx72.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %r.1, !taffo.info !42
  %arrayidx73.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx72.u6_26fixp, i32 0, i32 %t.0, !taffo.info !42
  %u6_26fixp = load i32, i32* %arrayidx73.u6_26fixp, align 4, !taffo.info !42
  %arrayidx74.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %s.1, !taffo.info !42
  %arrayidx75.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx74.u6_26fixp, i32 0, i32 %t.0, !taffo.info !42
  %u6_26fixp1 = load i32, i32* %arrayidx75.u6_26fixp, align 4, !taffo.info !42
  %13 = lshr i32 %u6_26fixp, 1, !taffo.info !42
  %14 = lshr i32 %u6_26fixp1, 1, !taffo.info !42
  %15 = ashr i32 %13, 5, !taffo.info !42
  %16 = ashr i32 %14, 5, !taffo.info !42
  %17 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %16, i32 20), !taffo.info !107
  %mul.u11_21fixp = shl i32 %17, 1, !taffo.info !199
  %arrayidx76.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %B.u6_26fixp, i32 %r.1, !taffo.info !45
  %arrayidx77.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx76.u6_26fixp, i32 0, i32 %s.1, !taffo.info !45
  %u6_26fixp2 = load i32, i32* %arrayidx77.u6_26fixp, align 4, !taffo.info !45
  %18 = lshr i32 %u6_26fixp2, 5, !taffo.info !45
  %add78.u11_21fixp = add i32 %18, %mul.u11_21fixp, !taffo.info !201
  %19 = shl i32 %add78.u11_21fixp, 5, !taffo.info !201
  store i32 %19, i32* %arrayidx77.u6_26fixp, align 4, !taffo.info !58
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %inc80 = add nsw i32 %s.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond68, !llvm.loop !203

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %r.1, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond64, !llvm.loop !204

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %t.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !205

for.end87:                                        ; preds = %for.cond60
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %r.2 = phi i32 [ 0, %for.end87 ], [ %inc104, %for.inc103 ], !taffo.info !67
  %cmp89 = icmp slt i32 %r.2, %n, !taffo.info !76
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %s.2 = phi i32 [ 0, %for.body91 ], [ %inc101, %for.inc100 ], !taffo.info !67
  %cmp93 = icmp slt i32 %s.2, %n, !taffo.info !76
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %arrayidx96.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %B.u6_26fixp, i32 %r.2, !taffo.info !45
  %arrayidx97.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx96.u6_26fixp, i32 0, i32 %s.2, !taffo.info !45
  %u6_26fixp3 = load i32, i32* %arrayidx97.u6_26fixp, align 4, !taffo.info !45
  %arrayidx98.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %A.u6_26fixp, i32 %r.2, !taffo.info !42
  %arrayidx99.u6_26fixp = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx98.u6_26fixp, i32 0, i32 %s.2, !taffo.info !42
  store i32 %u6_26fixp3, i32* %arrayidx99.u6_26fixp, align 4, !taffo.info !55
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %inc101 = add nsw i32 %s.2, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond92, !llvm.loop !206

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %inc104 = add nsw i32 %r.2, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond88, !llvm.loop !207

for.end105:                                       ; preds = %for.cond88
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u6_26fixp, i32 noundef %factor) #0 !taffo.initweight !208 !taffo.funinfo !209 !taffo.sourceFunction !210 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !76
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !67
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !76
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !78
  %arrayidx.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %0, !taffo.info !42
  %arrayidx4.u6_26fixp = getelementptr inbounds i32, i32* %arrayidx.u6_26fixp, i32 %j.0, !taffo.info !42
  %u6_26fixp = load i32, i32* %arrayidx4.u6_26fixp, align 4, !taffo.info !211
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !88
  %1 = lshr i32 %u6_26fixp, 1, !taffo.info !211
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !88
  %3 = ashr i32 %1, 2, !taffo.info !211
  %4 = ashr i32 %2, 5, !taffo.info !88
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 23), !taffo.info !213
  %mul.u8_24fixp = shl i32 %5, 1, !taffo.info !215
  %6 = mul nsw i32 %i.0, %m, !taffo.info !78
  %arrayidx5.u6_26fixp = getelementptr inbounds i32, i32* %val.u6_26fixp, i32 %6, !taffo.info !42
  %arrayidx6.u6_26fixp = getelementptr inbounds i32, i32* %arrayidx5.u6_26fixp, i32 %j.0, !taffo.info !42
  %7 = shl i32 %mul.u8_24fixp, 2, !taffo.info !215
  store i32 %7, i32* %arrayidx6.u6_26fixp, align 4, !taffo.info !55
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !216

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !217

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
!28 = distinct !{null, null, null}
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
!43 = !{!"fixp", i32 32, i32 26}
!44 = !{double 1.000000e-01, double 0x40405851E321A2E8}
!45 = !{!43, !46, i1 false, i2 -1}
!46 = !{double 4.000000e+00, double 0x40405851E321A2E8}
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 27}
!49 = !{double 1.610000e+01, double 1.800000e+01}
!50 = !{!51, !1, i1 false, i2 -1}
!51 = !{!"fixp", i32 -32, i32 28}
!52 = !{!"x"}
!53 = !{!48, !54, i1 false, i2 -1}
!54 = !{double 0.000000e+00, double 1.610000e+01}
!55 = !{i1 false, !44, i1 false, i2 -1}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = !{i1 false, !46, i1 false, i2 -1}
!59 = !{i1 false, !49, i1 false, i2 -1}
!60 = !{i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, !1, i1 false, i2 -1}
!62 = !{i1 false, !54, i1 false, i2 -1}
!63 = !{i1 false}
!64 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 2.100000e+01}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 1.000000e+00}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 2.100000e+01}
!71 = distinct !{!71, !23}
!72 = !{i1 false, i1 false, i1 false}
!73 = !{i32 1, !74, i32 1, !0}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 2.000000e+01, double 2.000000e+01}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 1.000000e+00}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 0.000000e+00}
!80 = distinct !{!80, !23}
!81 = !{i32 -1, i32 2, i32 -1}
!82 = !{i32 1, !74, i32 1, !47, i32 1, !83}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 4.000000e+00, double 4.000000e+00}
!85 = !{void (i32, float*, i32)* @scale_1d}
!86 = !{!87, !49, i1 false, i2 -1}
!87 = !{!"fixp", i32 32, i32 25}
!88 = !{!89, !84, i1 false, i2 1}
!89 = !{!"fixp", i32 32, i32 29}
!90 = !{!91, !92, i1 false, i2 -1}
!91 = !{!"fixp", i32 -32, i32 24}
!92 = !{double 6.440000e+01, double 7.200000e+01}
!93 = !{!87, !92, i1 false, i2 -1}
!94 = distinct !{!94, !23}
!95 = !{i32 1, !74, i32 1, !50, i32 1, !83}
!96 = !{!97, !1, i1 false, i2 -1}
!97 = !{!"fixp", i32 -32, i32 26}
!98 = !{!97, !99, i1 false, i2 -1}
!99 = !{double -1.517880e-01, double 0x402FFCF893FAF428}
!100 = distinct !{!100, !23}
!101 = !{i32 -1, i32 2, i32 2, i32 2, i32 2}
!102 = !{i32 1, !74, i32 1, !42, i32 1, !47, i32 1, !50, i32 1, !53}
!103 = distinct !{null}
!104 = !{!105, !106, i1 false, i2 -1}
!105 = !{!"fixp", i32 -32, i32 23}
!106 = !{double -2.000000e+02, double 2.000000e+02}
!107 = !{!108, !109, i1 false, i2 -1}
!108 = !{!"fixp", i32 -32, i32 20}
!109 = !{double 0x3F847AE147AE147C, double 0x4090B28B4CA8D01D}
!110 = !{!108, !111, i1 false, i2 -1}
!111 = !{double 0xC093D28B4CA8D01D, double 1.999900e+02}
!112 = distinct !{!112, !23}
!113 = !{!108, !114, i1 false, i2 -1}
!114 = !{double -2.000000e+03, double 2.000000e+03}
!115 = !{i1 false, !106, i1 false, i2 -1}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, !23}
!119 = distinct !{!119, !23}
!120 = !{!121, !106, i1 false, i2 -1}
!121 = !{!"fixp", i32 -32, i32 21}
!122 = !{!121, !123, i1 false, i2 -1}
!123 = !{double 0.000000e+00, double 0x40807278CC8D0BED}
!124 = !{!121, !125, i1 false, i2 -1}
!125 = !{double 0xC086B278CC8D0BED, double 2.000000e+02}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
!128 = !{i1 false, !129, i1 false, i2 0}
!129 = !{double 1.900000e+01, double 1.900000e+01}
!130 = !{i1 false, !131, i1 false, i2 0}
!131 = !{double 1.800000e+01, double 1.900000e+01}
!132 = !{i1 false, !133, i1 false, i2 0}
!133 = !{double 2.000000e+01, double 2.100000e+01}
!134 = !{!135, !106, i1 false, i2 -1}
!135 = !{!"fixp", i32 -32, i32 22}
!136 = !{!135, !137, i1 false, i2 -1}
!137 = !{double 0xBFF3D9094EBF7CC9, double 0x406056C5D0F5C5D9}
!138 = !{!135, !139, i1 false, i2 -1}
!139 = !{double 0xC074AB62E87AE2EC, double 0x406927B2129D7EFA}
!140 = !{i1 false, !141, i1 false, i2 0}
!141 = !{double 2.100000e+01, double 2.100000e+01}
!142 = distinct !{!142, !23}
!143 = !{i1 false, !144, i1 false, i2 0}
!144 = !{double 1.800000e+01, double 1.800000e+01}
!145 = distinct !{!145, !23}
!146 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!147 = !{i32 1, !74, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !53}
!148 = distinct !{null}
!149 = !{!48, !75, i1 false, i2 1}
!150 = !{i1 false, !66, i1 false, i2 1}
!151 = !{i32 0}
!152 = !{i1 false, !68, i1 false, i2 1}
!153 = !{i32 2}
!154 = !{i1 false, !155, i1 false, i2 1}
!155 = !{double 0.000000e+00, double 2.000000e+01}
!156 = !{i32 3}
!157 = !{!51, !1, i1 false, i2 1}
!158 = !{i1 false, i1 false, i1 false, i2 1}
!159 = !{!78, i1 false}
!160 = !{!48, !54, i1 false, i2 1}
!161 = !{i1 false, !70, i1 false, i2 1}
!162 = !{!48, !70, i1 false, i2 1}
!163 = !{!97, !164, i1 false, i2 1}
!164 = !{double 5.000000e-02, double 1.050000e+00}
!165 = !{!166, !164, i1 false, i2 1}
!166 = !{!"fixp", i32 32, i32 30}
!167 = !{!51, !168, i1 false, i2 1}
!168 = !{double 2.500000e-02, double 5.250000e-01}
!169 = !{!89, !168, i1 false, i2 1}
!170 = !{i1 false, !19}
!171 = !{!89, !172, i1 false, i2 1}
!172 = !{double 0x4010199980000000, double 0x40121999A0000000}
!173 = !{i1 false, !83}
!174 = !{!48, !49, i1 false, i2 1}
!175 = distinct !{!175, !23}
!176 = !{i1 false, !177, i1 false, i2 1}
!177 = !{double -2.000000e+01, double 0.000000e+00}
!178 = !{i1 false, !179, i1 false, i2 1}
!179 = !{double -1.900000e+01, double 0.000000e+00}
!180 = !{!97, !179, i1 false, i2 1}
!181 = !{!97, !182, i1 false, i2 1}
!182 = !{double 0xBFEE666666666666, double 0.000000e+00}
!183 = !{!184, !182, i1 false, i2 1}
!184 = !{!"fixp", i32 -32, i32 30}
!185 = !{!184, !186, i1 false, i2 1}
!186 = !{double 0x3FA99999999999A0, double 1.000000e+00}
!187 = !{i1 false, !76}
!188 = !{!43, !44, i1 false, i2 1}
!189 = distinct !{!189, !23}
!190 = !{i1 false, !191, i1 false, i2 1}
!191 = !{double 0.000000e+00, double 2.200000e+01}
!192 = !{i1 false, !193, i1 false, i2 1}
!193 = !{double 1.000000e+00, double 2.200000e+01}
!194 = distinct !{!194, !23}
!195 = !{!76, i1 false}
!196 = distinct !{!196, !23}
!197 = distinct !{!197, !23}
!198 = distinct !{!198, !23}
!199 = !{!200, !109, i1 false, i2 -1}
!200 = !{!"fixp", i32 32, i32 21}
!201 = !{!200, !202, i1 false, i2 -1}
!202 = !{double 4.010000e+00, double 0x4091354DDBC1DD34}
!203 = distinct !{!203, !23}
!204 = distinct !{!204, !23}
!205 = distinct !{!205, !23}
!206 = distinct !{!206, !23}
!207 = distinct !{!207, !23}
!208 = !{i32 -1, i32 -1, i32 3, i32 -1}
!209 = !{i32 1, !74, i32 1, !74, i32 1, !42, i32 1, !83}
!210 = !{void (i32, i32, float*, i32)* @scale_2d}
!211 = !{!212, !44, i1 false, i2 -1}
!212 = !{!"fixp", i32 32, i32 24}
!213 = !{!105, !214, i1 false, i2 -1}
!214 = !{double 4.000000e-01, double 0x40605851E321A2E8}
!215 = !{!212, !214, i1 false, i2 -1}
!216 = distinct !{!216, !23}
!217 = distinct !{!217, !23}
