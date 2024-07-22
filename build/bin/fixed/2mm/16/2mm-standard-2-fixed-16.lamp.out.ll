; ModuleID = './build/bin/fixed/2mm/16/2mm-standard-2-fixed-16.out.ll'
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
  %div1 = fdiv float %val, 1.000000e+01, !taffo.constinfo !15
  %lampsim = bitcast float %div1 to i32
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %cmp = fcmp oeq float %val, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end11

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ]
  %x.0 = phi float [ %lampsim3, %if.else ], [ %x.1, %for.inc ]
  %flag.0 = phi i32 [ 0, %if.else ], [ %flag.2, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %flag.0, 0
  br i1 %tobool, label %if.end10, label %if.then2

if.then2:                                         ; preds = %for.body
  %mul4 = fmul float %x.0, %x.0
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %sub8 = fsub float %val, %lampsim7
  %lampsim9 = bitcast float %sub8 to i32
  %lampsim10 = and i32 %lampsim9, -256
  %lampsim11 = bitcast i32 %lampsim10 to float
  %mul312 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !18
  %lampsim13 = bitcast float %mul312 to i32
  %lampsim14 = and i32 %lampsim13, -256
  %lampsim15 = bitcast i32 %lampsim14 to float
  %div416 = fdiv float %lampsim11, %lampsim15
  %lampsim17 = bitcast float %div416 to i32
  %lampsim18 = and i32 %lampsim17, -256
  %lampsim19 = bitcast i32 %lampsim18 to float
  %add20 = fadd float %x.0, %lampsim19
  %lampsim21 = bitcast float %add20 to i32
  %lampsim22 = and i32 %lampsim21, -256
  %lampsim23 = bitcast i32 %lampsim22 to float
  %mul524 = fmul float %lampsim23, %lampsim23
  %lampsim25 = bitcast float %mul524 to i32
  %lampsim26 = and i32 %lampsim25, -256
  %lampsim27 = bitcast i32 %lampsim26 to float
  %sub628 = fsub float %val, %lampsim27
  %lampsim29 = bitcast float %sub628 to i32
  %lampsim30 = and i32 %lampsim29, -256
  %lampsim31 = bitcast i32 %lampsim30 to float
  %cmp7 = fcmp oge float %lampsim31, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %fneg = fneg float %lampsim31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %lampsim31, %cond.true ], [ %fneg, %cond.false ]
  %cmp8 = fcmp ole float %cond, 0x3F50624DE0000000
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  %flag.1 = phi i32 [ 1, %if.then9 ], [ %flag.0, %cond.end ]
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %x.1 = phi float [ %x.0, %for.body ], [ %lampsim23, %if.end ]
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
  %conv1 = sitofp i32 %factor to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %0, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %arrayidx1 = getelementptr inbounds float, float* %val, i32 %i.0
  store float %lampsim7, float* %arrayidx1, align 4
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
  %conv1 = sitofp i32 %factor to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %1, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %2 = mul nsw i32 %i.0, %m
  %arrayidx5 = getelementptr inbounds float, float* %val, i32 %2
  %arrayidx6 = getelementptr inbounds float, float* %arrayidx5, i32 %j.0
  store float %lampsim7, float* %arrayidx6, align 4
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
  %conv1 = sitofp i32 %factor to float
  %lampsim = bitcast float %conv1 to i32
  %lampsim2 = and i32 %lampsim, -256
  %lampsim3 = bitcast i32 %lampsim2 to float
  %mul4 = fmul float %3, %lampsim3
  %lampsim5 = bitcast float %mul4 to i32
  %lampsim6 = and i32 %lampsim5, -256
  %lampsim7 = bitcast i32 %lampsim6 to float
  %4 = mul nuw i32 %m, %p
  %5 = mul nsw i32 %i.0, %4
  %arrayidx9 = getelementptr inbounds float, float* %val, i32 %5
  %6 = mul nsw i32 %j.0, %p
  %arrayidx10 = getelementptr inbounds float, float* %arrayidx9, i32 %6
  %arrayidx11 = getelementptr inbounds float, float* %arrayidx10, i32 %k.0
  store float %lampsim7, float* %arrayidx11, align 4
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
  %beta.u2_30fixp = alloca i32, align 4, !taffo.info !45
  %tmp.u5_27fixp = alloca [8 x [10 x i32]], align 4, !taffo.info !47
  %A.u2_30fixp = alloca [8 x [12 x i32]], align 4, !taffo.info !50
  %B.u2_30fixp = alloca [12 x [10 x i32]], align 4, !taffo.info !52
  %C.u2_30fixp = alloca [10 x [14 x i32]], align 4, !taffo.info !54
  %D.u8_24fixp = alloca [8 x [14 x i32]], align 4, !taffo.info !56, !taffo.target !58
  %arraydecay.u2_30fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay8.u2_30fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay9.u2_30fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u2_30fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay10.u8_24fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u8_24fixp, i32 0, i32 0, !taffo.info !56, !taffo.target !58
  %arraydecay11.u5_27fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !47
  call void @init_array.4_fixp(i32 8, i32 10, i32 12, i32 14, i32* %alpha.u2_30fixp, i32* %beta.u2_30fixp, [12 x i32]* %arraydecay.u2_30fixp, [10 x i32]* %arraydecay8.u2_30fixp, [14 x i32]* %arraydecay9.u2_30fixp, [14 x i32]* %arraydecay10.u8_24fixp, [10 x i32]* %arraydecay11.u5_27fixp), !taffo.info !59, !taffo.constinfo !60
  call void @scale_scalar.1_fixp(i32* %alpha.u2_30fixp, i32 2), !taffo.info !59, !taffo.constinfo !61
  call void @scale_scalar.1_fixp(i32* %beta.u2_30fixp, i32 2), !taffo.info !62, !taffo.constinfo !61
  %arraydecay12.u2_30fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !50
  %u2_30fixp4 = bitcast [12 x i32]* %arraydecay12.u2_30fixp to i32*, !taffo.info !50
  call void @scale_2d.6_fixp(i32 8, i32 12, i32* %u2_30fixp4, i32 2), !taffo.info !63, !taffo.constinfo !64
  %arraydecay13.u2_30fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !52
  %u2_30fixp3 = bitcast [10 x i32]* %arraydecay13.u2_30fixp to i32*, !taffo.info !52
  call void @scale_2d.6_fixp(i32 12, i32 10, i32* %u2_30fixp3, i32 2), !taffo.info !65, !taffo.constinfo !64
  %arraydecay14.u2_30fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u2_30fixp, i32 0, i32 0, !taffo.info !54
  %u2_30fixp2 = bitcast [14 x i32]* %arraydecay14.u2_30fixp to i32*, !taffo.info !54
  call void @scale_2d.6_fixp(i32 10, i32 14, i32* %u2_30fixp2, i32 2), !taffo.info !66, !taffo.constinfo !64
  %arraydecay15.u8_24fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u8_24fixp, i32 0, i32 0, !taffo.info !56, !taffo.target !58
  %u8_24fixp = bitcast [14 x i32]* %arraydecay15.u8_24fixp to i32*, !taffo.info !56, !taffo.target !58
  call void @scale_2d.9_fixp(i32 8, i32 14, i32* %u8_24fixp, i32 2), !taffo.info !67, !taffo.constinfo !64, !taffo.target !58
  %arraydecay16.u5_27fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !47
  %u5_27fixp = bitcast [10 x i32]* %arraydecay16.u5_27fixp to i32*, !taffo.info !47
  call void @scale_2d.5_fixp(i32 8, i32 10, i32* %u5_27fixp, i32 2), !taffo.info !68, !taffo.constinfo !64
  call void @timer_start(), !taffo.constinfo !69
  %u2_30fixp = load i32, i32* %alpha.u2_30fixp, align 4, !taffo.info !42
  %u2_30fixp1 = load i32, i32* %beta.u2_30fixp, align 4, !taffo.info !45
  %arraydecay17.u5_27fixp = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %tmp.u5_27fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay18.u2_30fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %A.u2_30fixp, i32 0, i32 0, !taffo.info !50
  %arraydecay19.u2_30fixp = getelementptr inbounds [12 x [10 x i32]], [12 x [10 x i32]]* %B.u2_30fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay20.u2_30fixp = getelementptr inbounds [10 x [14 x i32]], [10 x [14 x i32]]* %C.u2_30fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay21.u8_24fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u8_24fixp, i32 0, i32 0, !taffo.info !56, !taffo.target !58
  call void @kernel_2mm.3_fixp(i32 8, i32 10, i32 12, i32 14, i32 %u2_30fixp, i32 %u2_30fixp1, [10 x i32]* %arraydecay17.u5_27fixp, [12 x i32]* %arraydecay18.u2_30fixp, [10 x i32]* %arraydecay19.u2_30fixp, [14 x i32]* %arraydecay20.u2_30fixp, [14 x i32]* %arraydecay21.u8_24fixp), !taffo.info !59, !taffo.constinfo !60
  call void @timer_stop(), !taffo.constinfo !69
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28 ], !taffo.info !70
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !72
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !74
  %cmp23 = icmp slt i32 %j.0, 14, !taffo.info !72
  br i1 %cmp23, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond22
  %arrayidx.u8_24fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %D.u8_24fixp, i32 0, i32 %i.0, !taffo.info !56, !taffo.target !58
  %arrayidx25.u8_24fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx.u8_24fixp, i32 0, i32 %j.0, !taffo.info !56, !taffo.target !58
  %u8_24fixp5 = load i32, i32* %arrayidx25.u8_24fixp, align 4, !taffo.info !56, !taffo.target !58
  %0 = uitofp i32 %u8_24fixp5 to float, !taffo.info !56, !taffo.target !58
  %lampsim = bitcast float %0 to i32
  %lampsim1 = and i32 %lampsim, -256
  %lampsim2 = bitcast i32 %lampsim1 to float
  %1 = fdiv float %lampsim2, 0x4170000000000000, !taffo.info !56, !taffo.target !58
  %lampsim3 = bitcast float %1 to i32
  %lampsim4 = and i32 %lampsim3, -256
  %lampsim5 = bitcast i32 %lampsim4 to float
  %arrayidx26 = getelementptr inbounds [8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx27 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.info !0
  store float %lampsim5, float* %arrayidx27, align 4, !taffo.info !67, !taffo.target !58
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %j.0, 1, !taffo.info !76, !taffo.constinfo !21
  br label %for.cond22, !llvm.loop !78

for.end:                                          ; preds = %for.cond22
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %inc29 = add nsw i32 %i.0, 1, !taffo.info !79, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !81

for.end30:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 8, i32 noundef 14, [14 x float]* noundef getelementptr inbounds ([8 x [14 x float]], [8 x [14 x float]]* @D_float, i32 0, i32 0)), !taffo.constinfo !82
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [14 x float]* noundef %D) #0 !taffo.initweight !27 !taffo.funinfo !83 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !88
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !90
  %add = add nsw i32 %mul, %j.0, !taffo.info !90
  %rem = srem i32 %add, 20, !taffo.info !90, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !88
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !taffo.constinfo !61
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [14 x float], [14 x float]* %D, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [14 x float], [14 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv1 = fpext float %2 to double, !taffo.info !0
  %lampsim = bitcast double %conv1 to i64
  %lampsim2 = and i64 %lampsim, -137438953472
  %lampsim3 = bitcast i64 %lampsim2 to double
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), double noundef %lampsim3), !taffo.constinfo !82
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !92

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !93

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @scale_scalar.1_fixp(i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !94 !taffo.funinfo !95 !taffo.sourceFunction !96 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.4_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32* noundef %alpha.u2_30fixp, i32* noundef %beta.u2_30fixp, [12 x i32]* noundef %A.u2_30fixp, [10 x i32]* noundef %B.u2_30fixp, [14 x i32]* noundef %C.u2_30fixp, [14 x i32]* noundef %D.u8_24fixp, [10 x i32]* noundef %tmp.u5_27fixp) #0 !taffo.initweight !97 !taffo.funinfo !98 !taffo.sourceFunction !101 {
entry:
  store i32 1610612736, i32* %alpha.u2_30fixp, align 4, !taffo.info !59, !taffo.constinfo !102
  store i32 1288490240, i32* %beta.u2_30fixp, align 4, !taffo.info !62, !taffo.constinfo !104
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !107, !taffo.initweight !109
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp, label %for.body, label %for.end10, !taffo.info !107, !taffo.initweight !112

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !113, !taffo.initweight !109
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !113, !taffo.initweight !112

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !115, !taffo.initweight !111
  %add = add nsw i32 %mul, 1, !taffo.info !117, !taffo.initweight !112, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !119, !taffo.initweight !121
  %conv.u3_29fixp = shl i32 %rem, 29, !taffo.info !122
  %conv6.u4_28fixp = shl i32 %ni, 28, !taffo.info !124
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !122
  %1 = lshr i32 %conv6.u4_28fixp, 1, !taffo.info !124
  %2 = ashr i32 %0, 1, !taffo.info !122
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 27), !taffo.info !126
  %div.u3_29fixp = shl i32 %3, 2, !taffo.info !129
  %arrayidx.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !130
  %arrayidx7.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u2_30fixp, i32 0, i32 %j.0, !taffo.info !130
  %4 = shl i32 %div.u3_29fixp, 1, !taffo.info !129
  store i32 %4, i32* %arrayidx7.u2_30fixp, align 4, !taffo.info !131
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !132, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !134

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !135, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !137

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ], !taffo.info !107, !taffo.initweight !109
  %cmp12 = icmp slt i32 %i.1, %nk, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp12, label %for.body14, label %for.end32, !taffo.info !107, !taffo.initweight !112

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc28, %for.inc27 ], !taffo.info !113, !taffo.initweight !109
  %cmp16 = icmp slt i32 %j.1, %nj, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp16, label %for.body18, label %for.end29, !taffo.info !113, !taffo.initweight !112

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !132, !taffo.initweight !111, !taffo.constinfo !21
  %mul20 = mul nsw i32 %i.1, %add19, !taffo.info !138, !taffo.initweight !111
  %rem21 = srem i32 %mul20, %nj, !taffo.info !140, !taffo.initweight !112
  %conv22.u4_28fixp = shl i32 %rem21, 28, !taffo.info !141
  %conv23.u4_28fixp = shl i32 %nj, 28, !taffo.info !142
  %5 = lshr i32 %conv22.u4_28fixp, 1, !taffo.info !141
  %6 = lshr i32 %conv23.u4_28fixp, 1, !taffo.info !142
  %7 = call i32 @llvm.sdiv.fix.i32(i32 %5, i32 %6, i32 27), !taffo.info !143
  %div24.u1_31fixp = shl i32 %7, 4, !taffo.info !145
  %arrayidx25.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u2_30fixp, i32 %i.1, !taffo.info !147
  %arrayidx26.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx25.u2_30fixp, i32 0, i32 %j.1, !taffo.info !147
  %8 = lshr i32 %div24.u1_31fixp, 1, !taffo.info !145
  store i32 %8, i32* %arrayidx26.u2_30fixp, align 4, !taffo.info !131
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %inc28 = add nsw i32 %j.1, 1, !taffo.info !132, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !148

for.end29:                                        ; preds = %for.cond15
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i.1, 1, !taffo.info !135, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond11, !llvm.loop !149

for.end32:                                        ; preds = %for.cond11
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc54, %for.inc53 ], !taffo.info !107, !taffo.initweight !109
  %cmp34 = icmp slt i32 %i.2, %nj, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp34, label %for.body36, label %for.end55, !taffo.info !107, !taffo.initweight !112

for.body36:                                       ; preds = %for.cond33
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %j.2 = phi i32 [ 0, %for.body36 ], [ %inc51, %for.inc50 ], !taffo.info !113, !taffo.initweight !109
  %cmp38 = icmp slt i32 %j.2, %nl, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp38, label %for.body40, label %for.end52, !taffo.info !113, !taffo.initweight !112

for.body40:                                       ; preds = %for.cond37
  %add41 = add nsw i32 %j.2, 3, !taffo.info !150, !taffo.initweight !111, !taffo.constinfo !21
  %mul42 = mul nsw i32 %i.2, %add41, !taffo.info !152, !taffo.initweight !111
  %add43 = add nsw i32 %mul42, 1, !taffo.info !154, !taffo.initweight !112, !taffo.constinfo !21
  %rem44 = srem i32 %add43, %nl, !taffo.info !156, !taffo.initweight !121
  %conv45.u4_28fixp = shl i32 %rem44, 28, !taffo.info !158
  %conv46.u4_28fixp = shl i32 %nl, 28, !taffo.info !159
  %9 = lshr i32 %conv45.u4_28fixp, 1, !taffo.info !158
  %10 = lshr i32 %conv46.u4_28fixp, 1, !taffo.info !159
  %11 = call i32 @llvm.sdiv.fix.i32(i32 %9, i32 %10, i32 27), !taffo.info !160
  %div47.u1_31fixp = shl i32 %11, 4, !taffo.info !162
  %arrayidx48.u2_30fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u2_30fixp, i32 %i.2, !taffo.info !163
  %arrayidx49.u2_30fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx48.u2_30fixp, i32 0, i32 %j.2, !taffo.info !163
  %12 = lshr i32 %div47.u1_31fixp, 1, !taffo.info !162
  store i32 %12, i32* %arrayidx49.u2_30fixp, align 4, !taffo.info !131
  br label %for.inc50

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nsw i32 %j.2, 1, !taffo.info !132, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond37, !llvm.loop !164

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i.2, 1, !taffo.info !135, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond33, !llvm.loop !165

for.end55:                                        ; preds = %for.cond33
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc75, %for.end55
  %i.3 = phi i32 [ 0, %for.end55 ], [ %inc76, %for.inc75 ], !taffo.info !107, !taffo.initweight !109
  %cmp57 = icmp slt i32 %i.3, %ni, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp57, label %for.body59, label %for.end77, !taffo.info !107, !taffo.initweight !112

for.body59:                                       ; preds = %for.cond56
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.body59
  %j.3 = phi i32 [ 0, %for.body59 ], [ %inc73, %for.inc72 ], !taffo.info !113, !taffo.initweight !109
  %cmp61 = icmp slt i32 %j.3, %nl, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp61, label %for.body63, label %for.end74, !taffo.info !113, !taffo.initweight !112

for.body63:                                       ; preds = %for.cond60
  %add64 = add nsw i32 %j.3, 2, !taffo.info !166, !taffo.initweight !111, !taffo.constinfo !21
  %mul65 = mul nsw i32 %i.3, %add64, !taffo.info !168, !taffo.initweight !111
  %rem66 = srem i32 %mul65, %nk, !taffo.info !170, !taffo.initweight !112
  %conv67.u4_28fixp = shl i32 %rem66, 28, !taffo.info !172
  %conv68.u4_28fixp = shl i32 %nk, 28, !taffo.info !173
  %13 = lshr i32 %conv67.u4_28fixp, 1, !taffo.info !172
  %14 = lshr i32 %conv68.u4_28fixp, 1, !taffo.info !173
  %15 = call i32 @llvm.sdiv.fix.i32(i32 %13, i32 %14, i32 27), !taffo.info !174
  %div69.u1_31fixp = shl i32 %15, 4, !taffo.info !176
  %arrayidx70.u8_24fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u8_24fixp, i32 %i.3, !taffo.info !177
  %arrayidx71.u8_24fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx70.u8_24fixp, i32 0, i32 %j.3, !taffo.info !177
  %16 = lshr i32 %div69.u1_31fixp, 7, !taffo.info !176
  store i32 %16, i32* %arrayidx71.u8_24fixp, align 4, !taffo.info !131
  br label %for.inc72

for.inc72:                                        ; preds = %for.body63
  %inc73 = add nsw i32 %j.3, 1, !taffo.info !132, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond60, !llvm.loop !178

for.end74:                                        ; preds = %for.cond60
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %inc76 = add nsw i32 %i.3, 1, !taffo.info !135, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !179

for.end77:                                        ; preds = %for.cond56
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc91, %for.end77
  %i.4 = phi i32 [ 0, %for.end77 ], [ %inc92, %for.inc91 ], !taffo.info !107, !taffo.initweight !109
  %cmp79 = icmp slt i32 %i.4, %ni, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp79, label %for.body81, label %for.end93, !taffo.info !107, !taffo.initweight !112

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc88, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc89, %for.inc88 ], !taffo.info !113, !taffo.initweight !109
  %cmp83 = icmp slt i32 %j.4, %nj, !taffo.info !110, !taffo.initweight !111
  br i1 %cmp83, label %for.body85, label %for.end90, !taffo.info !113, !taffo.initweight !112

for.body85:                                       ; preds = %for.cond82
  %arrayidx86.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u5_27fixp, i32 %i.4, !taffo.info !180
  %arrayidx87.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx86.u5_27fixp, i32 0, i32 %j.4, !taffo.info !180
  store i32 0, i32* %arrayidx87.u5_27fixp, align 4, !taffo.info !131, !taffo.constinfo !181
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %inc89 = add nsw i32 %j.4, 1, !taffo.info !132, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond82, !llvm.loop !182

for.end90:                                        ; preds = %for.cond82
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.4, 1, !taffo.info !135, !taffo.initweight !111, !taffo.constinfo !21
  br label %for.cond78, !llvm.loop !183

for.end93:                                        ; preds = %for.cond78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_2mm.3_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %alpha.u2_30fixp, i32 noundef %beta.u2_30fixp, [10 x i32]* noundef %tmp.u5_27fixp, [12 x i32]* noundef %A.u2_30fixp, [10 x i32]* noundef %B.u2_30fixp, [14 x i32]* noundef %C.u2_30fixp, [14 x i32]* noundef %D.u8_24fixp) #0 !taffo.initweight !184 !taffo.funinfo !185 !taffo.sourceFunction !186 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc16, %for.inc15 ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !88
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u5_27fixp, i32 %i.0, !taffo.info !47
  %arrayidx4.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u5_27fixp, i32 0, i32 %j.0, !taffo.info !47
  store i32 0, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !131, !taffo.constinfo !181
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !72
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !88
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %A.u2_30fixp, i32 %i.0, !taffo.info !50
  %arrayidx9.u2_30fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx8.u2_30fixp, i32 0, i32 %k.0, !taffo.info !50
  %u2_30fixp = load i32, i32* %arrayidx9.u2_30fixp, align 4, !taffo.info !50
  %0 = lshr i32 %alpha.u2_30fixp, 1, !taffo.info !42
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !50
  %2 = ashr i32 %0, 1, !taffo.info !42
  %3 = ashr i32 %1, 1, !taffo.info !50
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 28), !taffo.info !187
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !190
  %arrayidx10.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %B.u2_30fixp, i32 %k.0, !taffo.info !52
  %arrayidx11.u2_30fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx10.u2_30fixp, i32 0, i32 %j.0, !taffo.info !52
  %u2_30fixp2 = load i32, i32* %arrayidx11.u2_30fixp, align 4, !taffo.info !191
  %5 = lshr i32 %mul.u3_29fixp, 1, !taffo.info !190
  %6 = lshr i32 %u2_30fixp2, 1, !taffo.info !191
  %7 = ashr i32 %5, 2, !taffo.info !190
  %8 = ashr i32 %6, 3, !taffo.info !191
  %9 = call i32 @llvm.smul.fix.i32(i32 %7, i32 %8, i32 26), !taffo.info !192
  %mul12.u5_27fixp = shl i32 %9, 1, !taffo.info !195
  %arrayidx13.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u5_27fixp, i32 %i.0, !taffo.info !47
  %arrayidx14.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx13.u5_27fixp, i32 0, i32 %j.0, !taffo.info !47
  %u5_27fixp = load i32, i32* %arrayidx14.u5_27fixp, align 4, !taffo.info !47
  %add.u5_27fixp = add i32 %u5_27fixp, %mul12.u5_27fixp, !taffo.info !196
  store i32 %add.u5_27fixp, i32* %arrayidx14.u5_27fixp, align 4, !taffo.info !68
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !198

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !199

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !200

for.end20:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end20
  %i.1 = phi i32 [ 0, %for.end20 ], [ %inc48, %for.inc47 ], !taffo.info !72
  %cmp22 = icmp slt i32 %i.1, %ni, !taffo.info !88
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %j.1 = phi i32 [ 0, %for.body23 ], [ %inc45, %for.inc44 ], !taffo.info !72
  %cmp25 = icmp slt i32 %j.1, %nl, !taffo.info !88
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %arrayidx27.u8_24fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u8_24fixp, i32 %i.1, !taffo.info !56
  %arrayidx28.u8_24fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx27.u8_24fixp, i32 0, i32 %j.1, !taffo.info !56
  %u8_24fixp = load i32, i32* %arrayidx28.u8_24fixp, align 4, !taffo.info !56
  %10 = lshr i32 %u8_24fixp, 1, !taffo.info !56
  %11 = lshr i32 %beta.u2_30fixp, 1, !taffo.info !45
  %12 = ashr i32 %11, 6, !taffo.info !45
  %13 = call i32 @llvm.smul.fix.i32(i32 %10, i32 %12, i32 23), !taffo.info !201
  %mul29.u8_24fixp = shl i32 %13, 1, !taffo.info !204
  store i32 %mul29.u8_24fixp, i32* %arrayidx28.u8_24fixp, align 4, !taffo.info !62
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc41, %for.body26
  %k.1 = phi i32 [ 0, %for.body26 ], [ %inc42, %for.inc41 ], !taffo.info !72
  %cmp31 = icmp slt i32 %k.1, %nj, !taffo.info !88
  br i1 %cmp31, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond30
  %arrayidx33.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %tmp.u5_27fixp, i32 %i.1, !taffo.info !47
  %arrayidx34.u5_27fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx33.u5_27fixp, i32 0, i32 %k.1, !taffo.info !47
  %u5_27fixp1 = load i32, i32* %arrayidx34.u5_27fixp, align 4, !taffo.info !205
  %arrayidx35.u2_30fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u2_30fixp, i32 %k.1, !taffo.info !54
  %arrayidx36.u2_30fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx35.u2_30fixp, i32 0, i32 %j.1, !taffo.info !54
  %u2_30fixp3 = load i32, i32* %arrayidx36.u2_30fixp, align 4, !taffo.info !54
  %14 = lshr i32 %u5_27fixp1, 1, !taffo.info !205
  %15 = lshr i32 %u2_30fixp3, 1, !taffo.info !54
  %16 = ashr i32 %14, 3, !taffo.info !205
  %17 = ashr i32 %15, 6, !taffo.info !54
  %18 = call i32 @llvm.smul.fix.i32(i32 %16, i32 %17, i32 23), !taffo.info !207
  %mul37.u8_24fixp = shl i32 %18, 1, !taffo.info !209
  %arrayidx38.u8_24fixp = getelementptr inbounds [14 x i32], [14 x i32]* %D.u8_24fixp, i32 %i.1, !taffo.info !56
  %arrayidx39.u8_24fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx38.u8_24fixp, i32 0, i32 %j.1, !taffo.info !56
  %u8_24fixp4 = load i32, i32* %arrayidx39.u8_24fixp, align 4, !taffo.info !56
  %add40.u8_24fixp = add i32 %u8_24fixp4, %mul37.u8_24fixp, !taffo.info !210
  store i32 %add40.u8_24fixp, i32* %arrayidx39.u8_24fixp, align 4, !taffo.info !67
  br label %for.inc41

for.inc41:                                        ; preds = %for.body32
  %inc42 = add nsw i32 %k.1, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond30, !llvm.loop !212

for.end43:                                        ; preds = %for.cond30
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %inc45 = add nsw i32 %j.1, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond24, !llvm.loop !213

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %inc48 = add nsw i32 %i.1, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond21, !llvm.loop !214

for.end49:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u2_30fixp, i32 noundef %factor) #0 !taffo.initweight !215 !taffo.funinfo !216 !taffo.sourceFunction !217 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !88
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %0, !taffo.info !50
  %arrayidx4.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx.u2_30fixp, i32 %j.0, !taffo.info !50
  %u2_30fixp = load i32, i32* %arrayidx4.u2_30fixp, align 4, !taffo.info !218
  %conv.u3_29fixp = shl i32 %factor, 29, !taffo.info !219
  %1 = lshr i32 %u2_30fixp, 1, !taffo.info !218
  %2 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !219
  %3 = ashr i32 %1, 1, !taffo.info !218
  %4 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %2, i32 28), !taffo.info !220
  %mul.u3_29fixp = shl i32 %4, 1, !taffo.info !222
  %5 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx5.u2_30fixp = getelementptr inbounds i32, i32* %val.u2_30fixp, i32 %5, !taffo.info !50
  %arrayidx6.u2_30fixp = getelementptr inbounds i32, i32* %arrayidx5.u2_30fixp, i32 %j.0, !taffo.info !50
  %6 = shl i32 %mul.u3_29fixp, 1, !taffo.info !222
  store i32 %6, i32* %arrayidx6.u2_30fixp, align 4, !taffo.info !63
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !223

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !224

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.5_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u5_27fixp, i32 noundef %factor) #0 !taffo.initweight !215 !taffo.funinfo !225 !taffo.sourceFunction !217 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !88
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %0, !taffo.info !47
  %arrayidx4.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx.u5_27fixp, i32 %j.0, !taffo.info !47
  %u5_27fixp = load i32, i32* %arrayidx4.u5_27fixp, align 4, !taffo.info !205
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !226
  %1 = lshr i32 %u5_27fixp, 1, !taffo.info !205
  %2 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !226
  %3 = ashr i32 %1, 1, !taffo.info !205
  %4 = ashr i32 %2, 4, !taffo.info !226
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 25), !taffo.info !227
  %mul.u6_26fixp = shl i32 %5, 1, !taffo.info !230
  %6 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx5.u5_27fixp = getelementptr inbounds i32, i32* %val.u5_27fixp, i32 %6, !taffo.info !47
  %arrayidx6.u5_27fixp = getelementptr inbounds i32, i32* %arrayidx5.u5_27fixp, i32 %j.0, !taffo.info !47
  %7 = shl i32 %mul.u6_26fixp, 1, !taffo.info !230
  store i32 %7, i32* %arrayidx6.u5_27fixp, align 4, !taffo.info !68
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !231

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !232

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u8_24fixp, i32 noundef %factor) #0 !taffo.initweight !215 !taffo.funinfo !233 !taffo.sourceFunction !217 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !72
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !88
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !72
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !88
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %0, !taffo.info !56
  %arrayidx4.u8_24fixp = getelementptr inbounds i32, i32* %arrayidx.u8_24fixp, i32 %j.0, !taffo.info !56
  %u8_24fixp = load i32, i32* %arrayidx4.u8_24fixp, align 4, !taffo.info !234
  %conv.u2_30fixp = shl i32 %factor, 30, !taffo.info !226
  %1 = lshr i32 %u8_24fixp, 1, !taffo.info !234
  %2 = lshr i32 %conv.u2_30fixp, 1, !taffo.info !226
  %3 = ashr i32 %1, 1, !taffo.info !234
  %4 = ashr i32 %2, 7, !taffo.info !226
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 22), !taffo.info !236
  %mul.u9_23fixp = shl i32 %5, 1, !taffo.info !239
  %6 = mul nsw i32 %i.0, %m, !taffo.info !90
  %arrayidx5.u8_24fixp = getelementptr inbounds i32, i32* %val.u8_24fixp, i32 %6, !taffo.info !56
  %arrayidx6.u8_24fixp = getelementptr inbounds i32, i32* %arrayidx5.u8_24fixp, i32 %j.0, !taffo.info !56
  %7 = shl i32 %mul.u9_23fixp, 1, !taffo.info !239
  store i32 %7, i32* %arrayidx6.u8_24fixp, align 4, !taffo.info !67
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !240

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !88, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !241

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.sdiv.fix.i32(i32, i32, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smul.fix.i32(i32, i32, i32 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
!26 = distinct !{null, null}
!27 = !{i32 -1, i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!29 = distinct !{!29, !23}
!30 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!31 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!32 = distinct !{null, null, null, null, null}
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
!45 = !{!43, !46, i1 false, i2 -1}
!46 = !{double 1.200000e+00, double 1.200000e+00}
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 32, i32 27}
!49 = !{double 0.000000e+00, double 0x40327333226C3B92}
!50 = !{!43, !51, i1 false, i2 -1}
!51 = !{double 0.000000e+00, double 1.750000e+00}
!52 = !{!43, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 1.800000e+00}
!54 = !{!43, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 0x3FFDB6DB940FECDD}
!56 = !{!57, !1, i1 false, i2 -1}
!57 = !{!"fixp", i32 32, i32 24}
!58 = !{!"D"}
!59 = !{i1 false, !44, i1 false, i2 -1}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, i1 false, i1 false}
!62 = !{i1 false, !46, i1 false, i2 -1}
!63 = !{i1 false, !51, i1 false, i2 -1}
!64 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!65 = !{i1 false, !53, i1 false, i2 -1}
!66 = !{i1 false, !55, i1 false, i2 -1}
!67 = !{i1 false, !1, i1 false, i2 -1}
!68 = !{i1 false, !49, i1 false, i2 -1}
!69 = !{i1 false}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 9.000000e+00}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 0.000000e+00, double 1.000000e+00}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 1.350000e+02}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 1.000000e+00, double 1.350000e+02}
!78 = distinct !{!78, !23}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 9.000000e+00}
!81 = distinct !{!81, !23}
!82 = !{i1 false, i1 false, i1 false, i1 false}
!83 = !{i32 1, !84, i32 1, !86, i32 1, !0}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 8.000000e+00, double 8.000000e+00}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 1.400000e+01, double 1.400000e+01}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 1.000000e+00, double 1.000000e+00}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0.000000e+00, double 0.000000e+00}
!92 = distinct !{!92, !23}
!93 = distinct !{!93, !23}
!94 = !{i32 1, i32 -1}
!95 = !{i32 1, !42, i32 1, !19}
!96 = !{void (float*, i32)* @scale_scalar}
!97 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2}
!98 = !{i32 1, !84, i32 1, !16, i32 1, !99, i32 1, !86, i32 1, !42, i32 1, !45, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !56, i32 1, !47}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 1.200000e+01, double 1.200000e+01}
!101 = distinct !{null}
!102 = !{!103, i1 false}
!103 = !{i1 false, !44, i1 false, i2 0}
!104 = !{!105, i1 false}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 0x3FF3333340000000, double 0x3FF3333340000000}
!107 = !{i1 false, !108, i1 false, i2 -1}
!108 = !{double 0.000000e+00, double 1.200000e+01}
!109 = !{i32 0}
!110 = !{i1 false, !73, i1 false, i2 -1}
!111 = !{i32 2}
!112 = !{i32 3}
!113 = !{i1 false, !114, i1 false, i2 -1}
!114 = !{double 0.000000e+00, double 1.400000e+01}
!115 = !{i1 false, !116, i1 false, i2 -1}
!116 = !{double 0.000000e+00, double 1.680000e+02}
!117 = !{i1 false, !118, i1 false, i2 -1}
!118 = !{double 1.000000e+00, double 1.690000e+02}
!119 = !{i1 false, !120, i1 false, i2 -1}
!120 = !{double 0.000000e+00, double 7.000000e+00}
!121 = !{i32 4}
!122 = !{!123, !120, i1 false, i2 -1}
!123 = !{!"fixp", i32 32, i32 29}
!124 = !{!125, !85, i1 false, i2 1}
!125 = !{!"fixp", i32 32, i32 28}
!126 = !{!127, !128, i1 false, i2 -1}
!127 = !{!"fixp", i32 -32, i32 27}
!128 = !{double 0.000000e+00, double 8.750000e-01}
!129 = !{!123, !128, i1 false, i2 -1}
!130 = !{!43, !51, i1 false, i2 1}
!131 = !{i1 false, i1 false, i1 false, i2 1}
!132 = !{i1 false, !133, i1 false, i2 -1}
!133 = !{double 1.000000e+00, double 1.500000e+01}
!134 = distinct !{!134, !23}
!135 = !{i1 false, !136, i1 false, i2 -1}
!136 = !{double 1.000000e+00, double 1.300000e+01}
!137 = distinct !{!137, !23}
!138 = !{i1 false, !139, i1 false, i2 -1}
!139 = !{double 0.000000e+00, double 1.800000e+02}
!140 = !{i1 false, !71, i1 false, i2 -1}
!141 = !{!125, !71, i1 false, i2 -1}
!142 = !{!125, !17, i1 false, i2 1}
!143 = !{!127, !144, i1 false, i2 -1}
!144 = !{double 0.000000e+00, double 9.000000e-01}
!145 = !{!146, !144, i1 false, i2 -1}
!146 = !{!"fixp", i32 32, i32 31}
!147 = !{!43, !53, i1 false, i2 1}
!148 = distinct !{!148, !23}
!149 = distinct !{!149, !23}
!150 = !{i1 false, !151, i1 false, i2 -1}
!151 = !{double 3.000000e+00, double 1.700000e+01}
!152 = !{i1 false, !153, i1 false, i2 -1}
!153 = !{double 0.000000e+00, double 2.040000e+02}
!154 = !{i1 false, !155, i1 false, i2 -1}
!155 = !{double 1.000000e+00, double 2.050000e+02}
!156 = !{i1 false, !157, i1 false, i2 -1}
!157 = !{double 0.000000e+00, double 1.300000e+01}
!158 = !{!125, !157, i1 false, i2 -1}
!159 = !{!125, !87, i1 false, i2 1}
!160 = !{!127, !161, i1 false, i2 -1}
!161 = !{double 0.000000e+00, double 0x3FEDB6DB6DB6DB6E}
!162 = !{!146, !161, i1 false, i2 -1}
!163 = !{!43, !55, i1 false, i2 1}
!164 = distinct !{!164, !23}
!165 = distinct !{!165, !23}
!166 = !{i1 false, !167, i1 false, i2 -1}
!167 = !{double 2.000000e+00, double 1.600000e+01}
!168 = !{i1 false, !169, i1 false, i2 -1}
!169 = !{double 0.000000e+00, double 1.920000e+02}
!170 = !{i1 false, !171, i1 false, i2 -1}
!171 = !{double 0.000000e+00, double 1.100000e+01}
!172 = !{!125, !171, i1 false, i2 -1}
!173 = !{!125, !100, i1 false, i2 1}
!174 = !{!127, !175, i1 false, i2 -1}
!175 = !{double 0.000000e+00, double 0x3FED555555555555}
!176 = !{!146, !175, i1 false, i2 -1}
!177 = !{!57, !1, i1 false, i2 1}
!178 = distinct !{!178, !23}
!179 = distinct !{!179, !23}
!180 = !{!48, !49, i1 false, i2 1}
!181 = !{!90, i1 false}
!182 = distinct !{!182, !23}
!183 = distinct !{!183, !23}
!184 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!185 = !{i32 1, !84, i32 1, !16, i32 1, !99, i32 1, !86, i32 1, !42, i32 1, !45, i32 1, !47, i32 1, !50, i32 1, !52, i32 1, !54, i32 1, !56}
!186 = distinct !{null}
!187 = !{!188, !189, i1 false, i2 -1}
!188 = !{!"fixp", i32 -32, i32 28}
!189 = !{double 0.000000e+00, double 2.625000e+00}
!190 = !{!123, !189, i1 false, i2 -1}
!191 = !{!123, !53, i1 false, i2 -1}
!192 = !{!193, !194, i1 false, i2 -1}
!193 = !{!"fixp", i32 -32, i32 26}
!194 = !{double 0.000000e+00, double 0x4012E66666666667}
!195 = !{!48, !194, i1 false, i2 -1}
!196 = !{!48, !197, i1 false, i2 -1}
!197 = !{double 0.000000e+00, double 0x40372CCCBC05D52C}
!198 = distinct !{!198, !23}
!199 = distinct !{!199, !23}
!200 = distinct !{!200, !23}
!201 = !{!202, !203, i1 false, i2 -1}
!202 = !{!"fixp", i32 -32, i32 23}
!203 = !{double 0.000000e+00, double 0x4067047AD9BAF1D9}
!204 = !{!57, !203, i1 false, i2 -1}
!205 = !{!206, !49, i1 false, i2 -1}
!206 = !{!"fixp", i32 32, i32 26}
!207 = !{!202, !208, i1 false, i2 -1}
!208 = !{double 0.000000e+00, double 0x404121D423C9CC34}
!209 = !{!57, !208, i1 false, i2 -1}
!210 = !{!57, !211, i1 false, i2 -1}
!211 = !{double 0.000000e+00, double 0x406776DB690E3C97}
!212 = distinct !{!212, !23}
!213 = distinct !{!213, !23}
!214 = distinct !{!214, !23}
!215 = !{i32 -1, i32 -1, i32 3, i32 -1}
!216 = !{i32 1, !84, i32 1, !99, i32 1, !50, i32 1, !19}
!217 = !{void (i32, i32, float*, i32)* @scale_2d}
!218 = !{!123, !51, i1 false, i2 -1}
!219 = !{!123, !20, i1 false, i2 1}
!220 = !{!188, !221, i1 false, i2 -1}
!221 = !{double 0.000000e+00, double 3.500000e+00}
!222 = !{!123, !221, i1 false, i2 -1}
!223 = distinct !{!223, !23}
!224 = distinct !{!224, !23}
!225 = !{i32 1, !84, i32 1, !16, i32 1, !47, i32 1, !19}
!226 = !{!43, !20, i1 false, i2 1}
!227 = !{!228, !229, i1 false, i2 -1}
!228 = !{!"fixp", i32 -32, i32 25}
!229 = !{double 0.000000e+00, double 0x40427333226C3B92}
!230 = !{!206, !229, i1 false, i2 -1}
!231 = distinct !{!231, !23}
!232 = distinct !{!232, !23}
!233 = !{i32 1, !84, i32 1, !86, i32 1, !56, i32 1, !19}
!234 = !{!235, !1, i1 false, i2 -1}
!235 = !{!"fixp", i32 32, i32 23}
!236 = !{!237, !238, i1 false, i2 -1}
!237 = !{!"fixp", i32 -32, i32 22}
!238 = !{double 0.000000e+00, double 0x40732E66601BC98A}
!239 = !{!235, !238, i1 false, i2 -1}
!240 = distinct !{!240, !23}
!241 = distinct !{!241, !23}