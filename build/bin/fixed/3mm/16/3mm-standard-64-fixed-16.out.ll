; ModuleID = './build/bin/fixed/3mm/16/3mm-standard-64-fixed-16.out.ll.4.taffotmp.ll'
source_filename = "./sources/3mm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@G_float = dso_local global [6 x [12 x float]] zeroinitializer, align 4, !taffo.info !0
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
define dso_local void @scale_1d(i32 noundef %n, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !26 !taffo.funinfo !27 {
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
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_2d(i32 noundef %n, i32 noundef %m, float* noundef %val, i32 noundef %factor) #0 !taffo.initweight !29 !taffo.funinfo !30 !taffo.equivalentChild !31 {
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
  %E.u9_23fixp = alloca [6 x [8 x i32]], align 4, !taffo.info !41
  %A.u4_28fixp = alloca [6 x [10 x i32]], align 4, !taffo.info !44
  %B.u4_28fixp = alloca [10 x [8 x i32]], align 4, !taffo.info !47
  %F.u10_22fixp = alloca [8 x [12 x i32]], align 4, !taffo.info !49
  %C.u4_28fixp = alloca [8 x [14 x i32]], align 4, !taffo.info !52
  %D.u4_28fixp = alloca [14 x [12 x i32]], align 4, !taffo.info !54
  %G.u20_12fixp = alloca [6 x [12 x i32]], align 4, !taffo.info !56, !taffo.target !58
  %arraydecay.u4_28fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay8.u4_28fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay9.u4_28fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u4_28fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay10.u4_28fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u4_28fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay11.u9_23fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u9_23fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay12.u10_22fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u10_22fixp, i32 0, i32 0, !taffo.info !49
  %arraydecay13.u20_12fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u20_12fixp, i32 0, i32 0, !taffo.info !56, !taffo.target !58
  call void @init_array.2_fixp(i32 6, i32 8, i32 10, i32 12, i32 14, [10 x i32]* %arraydecay.u4_28fixp, [8 x i32]* %arraydecay8.u4_28fixp, [14 x i32]* %arraydecay9.u4_28fixp, [12 x i32]* %arraydecay10.u4_28fixp, [8 x i32]* %arraydecay11.u9_23fixp, [12 x i32]* %arraydecay12.u10_22fixp, [12 x i32]* %arraydecay13.u20_12fixp), !taffo.info !59, !taffo.constinfo !60
  %arraydecay14.u9_23fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u9_23fixp, i32 0, i32 0, !taffo.info !41
  %u9_23fixp = bitcast [8 x i32]* %arraydecay14.u9_23fixp to i32*, !taffo.info !41
  call void @scale_2d.3_fixp(i32 6, i32 8, i32* %u9_23fixp, i32 64), !taffo.info !59, !taffo.constinfo !61
  %arraydecay15.u4_28fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !44
  %u4_28fixp = bitcast [10 x i32]* %arraydecay15.u4_28fixp to i32*, !taffo.info !44
  call void @scale_2d.4_fixp(i32 6, i32 10, i32* %u4_28fixp, i32 64), !taffo.info !62, !taffo.constinfo !61
  %arraydecay16.u4_28fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !47
  %u4_28fixp3 = bitcast [8 x i32]* %arraydecay16.u4_28fixp to i32*, !taffo.info !47
  call void @scale_2d.4_fixp(i32 10, i32 8, i32* %u4_28fixp3, i32 64), !taffo.info !63, !taffo.constinfo !61
  %arraydecay17.u10_22fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u10_22fixp, i32 0, i32 0, !taffo.info !49
  %u10_22fixp = bitcast [12 x i32]* %arraydecay17.u10_22fixp to i32*, !taffo.info !49
  call void @scale_2d.6_fixp(i32 8, i32 12, i32* %u10_22fixp, i32 64), !taffo.info !64, !taffo.constinfo !61
  %arraydecay18.u4_28fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u4_28fixp, i32 0, i32 0, !taffo.info !52
  %u4_28fixp2 = bitcast [14 x i32]* %arraydecay18.u4_28fixp to i32*, !taffo.info !52
  call void @scale_2d.4_fixp(i32 8, i32 14, i32* %u4_28fixp2, i32 64), !taffo.info !65, !taffo.constinfo !61
  %arraydecay19.u4_28fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u4_28fixp, i32 0, i32 0, !taffo.info !54
  %u4_28fixp1 = bitcast [12 x i32]* %arraydecay19.u4_28fixp to i32*, !taffo.info !54
  call void @scale_2d.4_fixp(i32 14, i32 12, i32* %u4_28fixp1, i32 64), !taffo.info !66, !taffo.constinfo !61
  %arraydecay20.u20_12fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u20_12fixp, i32 0, i32 0, !taffo.info !56, !taffo.target !58
  %u20_12fixp = bitcast [12 x i32]* %arraydecay20.u20_12fixp to i32*, !taffo.info !56, !taffo.target !58
  call void @scale_2d.9_fixp(i32 6, i32 12, i32* %u20_12fixp, i32 64), !taffo.info !67, !taffo.constinfo !61, !taffo.target !58
  call void @timer_start(), !taffo.constinfo !68
  %arraydecay21.u9_23fixp = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %E.u9_23fixp, i32 0, i32 0, !taffo.info !41
  %arraydecay22.u4_28fixp = getelementptr inbounds [6 x [10 x i32]], [6 x [10 x i32]]* %A.u4_28fixp, i32 0, i32 0, !taffo.info !44
  %arraydecay23.u4_28fixp = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %B.u4_28fixp, i32 0, i32 0, !taffo.info !47
  %arraydecay24.u10_22fixp = getelementptr inbounds [8 x [12 x i32]], [8 x [12 x i32]]* %F.u10_22fixp, i32 0, i32 0, !taffo.info !49
  %arraydecay25.u4_28fixp = getelementptr inbounds [8 x [14 x i32]], [8 x [14 x i32]]* %C.u4_28fixp, i32 0, i32 0, !taffo.info !52
  %arraydecay26.u4_28fixp = getelementptr inbounds [14 x [12 x i32]], [14 x [12 x i32]]* %D.u4_28fixp, i32 0, i32 0, !taffo.info !54
  %arraydecay27.u20_12fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u20_12fixp, i32 0, i32 0, !taffo.info !56, !taffo.target !58
  call void @kernel_3mm.1_fixp(i32 6, i32 8, i32 10, i32 12, i32 14, [8 x i32]* %arraydecay21.u9_23fixp, [10 x i32]* %arraydecay22.u4_28fixp, [8 x i32]* %arraydecay23.u4_28fixp, [12 x i32]* %arraydecay24.u10_22fixp, [14 x i32]* %arraydecay25.u4_28fixp, [12 x i32]* %arraydecay26.u4_28fixp, [12 x i32]* %arraydecay27.u20_12fixp), !taffo.info !59, !taffo.constinfo !60
  call void @timer_stop(), !taffo.constinfo !68
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc35, %for.inc34 ], !taffo.info !69
  %cmp = icmp slt i32 %i.0, 6, !taffo.info !71
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !73
  %cmp29 = icmp slt i32 %j.0, 12, !taffo.info !71
  br i1 %cmp29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %arrayidx.u20_12fixp = getelementptr inbounds [6 x [12 x i32]], [6 x [12 x i32]]* %G.u20_12fixp, i32 0, i32 %i.0, !taffo.info !56, !taffo.target !58
  %arrayidx31.u20_12fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx.u20_12fixp, i32 0, i32 %j.0, !taffo.info !56, !taffo.target !58
  %u20_12fixp4 = load i32, i32* %arrayidx31.u20_12fixp, align 4, !taffo.info !56, !taffo.target !58
  %0 = uitofp i32 %u20_12fixp4 to float, !taffo.info !56, !taffo.target !58
  %1 = fdiv float %0, 4.096000e+03, !taffo.info !56, !taffo.target !58
  %arrayidx32 = getelementptr inbounds [6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx33 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx32, i32 0, i32 %j.0, !taffo.info !0
  store float %1, float* %arrayidx33, align 4, !taffo.info !67, !taffo.target !58
  br label %for.inc

for.inc:                                          ; preds = %for.body30
  %inc = add nsw i32 %j.0, 1, !taffo.info !75, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !77

for.end:                                          ; preds = %for.cond28
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %inc35 = add nsw i32 %i.0, 1, !taffo.info !78, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !80

for.end36:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 6, i32 noundef 12, [12 x float]* noundef getelementptr inbounds ([6 x [12 x float]], [6 x [12 x float]]* @G_float, i32 0, i32 0)), !taffo.constinfo !81
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %ni, i32 noundef %nl, [12 x float]* noundef %G) #0 !taffo.initweight !26 !taffo.funinfo !82 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %nl, !taffo.info !87
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %ni, !taffo.info !89
  %add = add nsw i32 %mul, %j.0, !taffo.info !89
  %rem = srem i32 %add, 20, !taffo.info !89, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !87
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !91
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [12 x float], [12 x float]* %G, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !81
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !92

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !93

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm.1_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [8 x i32]* noundef %E.u9_23fixp, [10 x i32]* noundef %A.u4_28fixp, [8 x i32]* noundef %B.u4_28fixp, [12 x i32]* noundef %F.u10_22fixp, [14 x i32]* noundef %C.u4_28fixp, [12 x i32]* noundef %D.u4_28fixp, [12 x i32]* noundef %G.u20_12fixp) #0 !taffo.initweight !94 !taffo.funinfo !95 !taffo.sourceFunction !100 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %nj, !taffo.info !87
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %arrayidx.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx4.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  store i32 0, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !101, !taffo.constinfo !102
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !taffo.info !71
  %cmp6 = icmp slt i32 %k.0, %nk, !taffo.info !87
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %arrayidx8.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !44
  %arrayidx9.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8.u4_28fixp, i32 0, i32 %k.0, !taffo.info !44
  %u4_28fixp = load i32, i32* %arrayidx9.u4_28fixp, align 4, !taffo.info !44
  %arrayidx10.u4_28fixp = getelementptr inbounds [8 x i32], [8 x i32]* %B.u4_28fixp, i32 %k.0, !taffo.info !47
  %arrayidx11.u4_28fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx10.u4_28fixp, i32 0, i32 %j.0, !taffo.info !47
  %u4_28fixp2 = load i32, i32* %arrayidx11.u4_28fixp, align 4, !taffo.info !47
  %0 = lshr i32 %u4_28fixp, 1, !taffo.info !44
  %1 = lshr i32 %u4_28fixp2, 1, !taffo.info !47
  %2 = ashr i32 %0, 3, !taffo.info !44
  %3 = ashr i32 %1, 3, !taffo.info !47
  %4 = call i32 @llvm.smul.fix.i32(i32 %2, i32 %3, i32 24), !taffo.info !103
  %mul.u7_25fixp = shl i32 %4, 1, !taffo.info !106
  %arrayidx12.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u9_23fixp, i32 %i.0, !taffo.info !41
  %arrayidx13.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx12.u9_23fixp, i32 0, i32 %j.0, !taffo.info !41
  %u9_23fixp = load i32, i32* %arrayidx13.u9_23fixp, align 4, !taffo.info !108
  %5 = lshr i32 %u9_23fixp, 1, !taffo.info !108
  %6 = lshr i32 %mul.u7_25fixp, 3, !taffo.info !106
  %add.u10_22fixp = add i32 %5, %6, !taffo.info !109
  %7 = shl i32 %add.u10_22fixp, 1, !taffo.info !109
  store i32 %7, i32* %arrayidx13.u9_23fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %k.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !111

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !112

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !113

for.end19:                                        ; preds = %for.cond
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc46, %for.inc45 ], !taffo.info !71
  %cmp21 = icmp slt i32 %i.1, %nj, !taffo.info !87
  br i1 %cmp21, label %for.body22, label %for.end47

for.body22:                                       ; preds = %for.cond20
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc42, %for.body22
  %j.1 = phi i32 [ 0, %for.body22 ], [ %inc43, %for.inc42 ], !taffo.info !71
  %cmp24 = icmp slt i32 %j.1, %nl, !taffo.info !87
  br i1 %cmp24, label %for.body25, label %for.end44

for.body25:                                       ; preds = %for.cond23
  %arrayidx26.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u10_22fixp, i32 %i.1, !taffo.info !49
  %arrayidx27.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx26.u10_22fixp, i32 0, i32 %j.1, !taffo.info !49
  store i32 0, i32* %arrayidx27.u10_22fixp, align 4, !taffo.info !101, !taffo.constinfo !102
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.body25
  %k.1 = phi i32 [ 0, %for.body25 ], [ %inc40, %for.inc39 ], !taffo.info !71
  %cmp29 = icmp slt i32 %k.1, %nm, !taffo.info !87
  br i1 %cmp29, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond28
  %arrayidx31.u4_28fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u4_28fixp, i32 %i.1, !taffo.info !52
  %arrayidx32.u4_28fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx31.u4_28fixp, i32 0, i32 %k.1, !taffo.info !52
  %u4_28fixp4 = load i32, i32* %arrayidx32.u4_28fixp, align 4, !taffo.info !52
  %arrayidx33.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %D.u4_28fixp, i32 %k.1, !taffo.info !54
  %arrayidx34.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx33.u4_28fixp, i32 0, i32 %j.1, !taffo.info !54
  %u4_28fixp5 = load i32, i32* %arrayidx34.u4_28fixp, align 4, !taffo.info !54
  %8 = lshr i32 %u4_28fixp4, 1, !taffo.info !52
  %9 = lshr i32 %u4_28fixp5, 1, !taffo.info !54
  %10 = ashr i32 %8, 6, !taffo.info !52
  %11 = ashr i32 %9, 6, !taffo.info !54
  %12 = call i32 @llvm.smul.fix.i32(i32 %10, i32 %11, i32 21), !taffo.info !114
  %mul35.u10_22fixp = shl i32 %12, 1, !taffo.info !117
  %arrayidx36.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u10_22fixp, i32 %i.1, !taffo.info !49
  %arrayidx37.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx36.u10_22fixp, i32 0, i32 %j.1, !taffo.info !49
  %u10_22fixp = load i32, i32* %arrayidx37.u10_22fixp, align 4, !taffo.info !49
  %add38.u10_22fixp = add i32 %u10_22fixp, %mul35.u10_22fixp, !taffo.info !118
  store i32 %add38.u10_22fixp, i32* %arrayidx37.u10_22fixp, align 4, !taffo.info !64
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %inc40 = add nsw i32 %k.1, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond28, !llvm.loop !120

for.end41:                                        ; preds = %for.cond28
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %j.1, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond23, !llvm.loop !121

for.end44:                                        ; preds = %for.cond23
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %i.1, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond20, !llvm.loop !122

for.end47:                                        ; preds = %for.cond20
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %for.end47
  %i.2 = phi i32 [ 0, %for.end47 ], [ %inc74, %for.inc73 ], !taffo.info !71
  %cmp49 = icmp slt i32 %i.2, %ni, !taffo.info !87
  br i1 %cmp49, label %for.body50, label %for.end75

for.body50:                                       ; preds = %for.cond48
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc70, %for.body50
  %j.2 = phi i32 [ 0, %for.body50 ], [ %inc71, %for.inc70 ], !taffo.info !71
  %cmp52 = icmp slt i32 %j.2, %nl, !taffo.info !87
  br i1 %cmp52, label %for.body53, label %for.end72

for.body53:                                       ; preds = %for.cond51
  %arrayidx54.u20_12fixp = getelementptr inbounds [12 x i32], [12 x i32]* %G.u20_12fixp, i32 %i.2, !taffo.info !56
  %arrayidx55.u20_12fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx54.u20_12fixp, i32 0, i32 %j.2, !taffo.info !56
  store i32 0, i32* %arrayidx55.u20_12fixp, align 4, !taffo.info !101, !taffo.constinfo !102
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.body53
  %k.2 = phi i32 [ 0, %for.body53 ], [ %inc68, %for.inc67 ], !taffo.info !71
  %cmp57 = icmp slt i32 %k.2, %nj, !taffo.info !87
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %arrayidx59.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u9_23fixp, i32 %i.2, !taffo.info !41
  %arrayidx60.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx59.u9_23fixp, i32 0, i32 %k.2, !taffo.info !41
  %u9_23fixp1 = load i32, i32* %arrayidx60.u9_23fixp, align 4, !taffo.info !41
  %arrayidx61.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u10_22fixp, i32 %k.2, !taffo.info !49
  %arrayidx62.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx61.u10_22fixp, i32 0, i32 %j.2, !taffo.info !49
  %u10_22fixp3 = load i32, i32* %arrayidx62.u10_22fixp, align 4, !taffo.info !49
  %13 = lshr i32 %u9_23fixp1, 1, !taffo.info !41
  %14 = lshr i32 %u10_22fixp3, 1, !taffo.info !49
  %15 = ashr i32 %13, 9, !taffo.info !41
  %16 = ashr i32 %14, 8, !taffo.info !49
  %17 = call i32 @llvm.smul.fix.i32(i32 %15, i32 %16, i32 13), !taffo.info !123
  %mul63.u18_14fixp = shl i32 %17, 1, !taffo.info !126
  %arrayidx64.u20_12fixp = getelementptr inbounds [12 x i32], [12 x i32]* %G.u20_12fixp, i32 %i.2, !taffo.info !56
  %arrayidx65.u20_12fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx64.u20_12fixp, i32 0, i32 %j.2, !taffo.info !56
  %u20_12fixp = load i32, i32* %arrayidx65.u20_12fixp, align 4, !taffo.info !128
  %18 = lshr i32 %u20_12fixp, 1, !taffo.info !128
  %19 = lshr i32 %mul63.u18_14fixp, 3, !taffo.info !126
  %add66.u21_11fixp = add i32 %18, %19, !taffo.info !130
  %20 = shl i32 %add66.u21_11fixp, 1, !taffo.info !130
  store i32 %20, i32* %arrayidx65.u20_12fixp, align 4, !taffo.info !67
  br label %for.inc67

for.inc67:                                        ; preds = %for.body58
  %inc68 = add nsw i32 %k.2, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond56, !llvm.loop !132

for.end69:                                        ; preds = %for.cond56
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %inc71 = add nsw i32 %j.2, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond51, !llvm.loop !133

for.end72:                                        ; preds = %for.cond51
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %inc74 = add nsw i32 %i.2, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond48, !llvm.loop !134

for.end75:                                        ; preds = %for.cond48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2_fixp(i32 noundef %ni, i32 noundef %nj, i32 noundef %nk, i32 noundef %nl, i32 noundef %nm, [10 x i32]* noundef %A.u4_28fixp, [8 x i32]* noundef %B.u4_28fixp, [14 x i32]* noundef %C.u4_28fixp, [12 x i32]* noundef %D.u4_28fixp, [8 x i32]* noundef %E.u9_23fixp, [12 x i32]* noundef %F.u10_22fixp, [12 x i32]* noundef %G.u20_12fixp) #0 !taffo.initweight !94 !taffo.funinfo !135 !taffo.sourceFunction !136 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !137, !taffo.initweight !139
  %cmp = icmp slt i32 %i.0, %ni, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp, label %for.body, label %for.end11, !taffo.info !142, !taffo.initweight !144

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !137, !taffo.initweight !139
  %cmp4 = icmp slt i32 %j.0, %nk, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !142, !taffo.initweight !144

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %j.0, !taffo.info !145, !taffo.initweight !141
  %add = add nsw i32 %mul, 1, !taffo.info !147, !taffo.initweight !144, !taffo.constinfo !21
  %rem = srem i32 %add, %ni, !taffo.info !149, !taffo.initweight !151
  %conv.u3_29fixp = shl i32 %rem, 29, !taffo.info !152
  %mul6 = mul nsw i32 5, %ni, !taffo.info !154, !taffo.constinfo !21
  %conv7.u5_27fixp = shl i32 %mul6, 27, !taffo.info !156, !taffo.constinfo !21
  %0 = lshr i32 %conv.u3_29fixp, 1, !taffo.info !152
  %1 = lshr i32 %conv7.u5_27fixp, 1, !taffo.info !156, !taffo.constinfo !21
  %2 = ashr i32 %0, 2, !taffo.info !152
  %3 = call i32 @llvm.sdiv.fix.i32(i32 %2, i32 %1, i32 26), !taffo.info !158
  %div.u3_29fixp = shl i32 %3, 3, !taffo.info !161
  %arrayidx.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %A.u4_28fixp, i32 %i.0, !taffo.info !162
  %arrayidx8.u4_28fixp = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx.u4_28fixp, i32 0, i32 %j.0, !taffo.info !162
  %4 = lshr i32 %div.u3_29fixp, 1, !taffo.info !161
  store i32 %4, i32* %arrayidx8.u4_28fixp, align 4, !taffo.info !101
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !165

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !166

for.end11:                                        ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc33, %for.end11
  %i.1 = phi i32 [ 0, %for.end11 ], [ %inc34, %for.inc33 ], !taffo.info !137, !taffo.initweight !139
  %cmp13 = icmp slt i32 %i.1, %nk, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp13, label %for.body15, label %for.end35, !taffo.info !142, !taffo.initweight !144

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.body15
  %j.1 = phi i32 [ 0, %for.body15 ], [ %inc31, %for.inc30 ], !taffo.info !137, !taffo.initweight !139
  %cmp17 = icmp slt i32 %j.1, %nj, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp17, label %for.body19, label %for.end32, !taffo.info !142, !taffo.initweight !144

for.body19:                                       ; preds = %for.cond16
  %add20 = add nsw i32 %j.1, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  %mul21 = mul nsw i32 %i.1, %add20, !taffo.info !167, !taffo.initweight !141
  %add22 = add nsw i32 %mul21, 2, !taffo.info !169, !taffo.initweight !144, !taffo.constinfo !21
  %rem23 = srem i32 %add22, %nj, !taffo.info !171, !taffo.initweight !151
  %conv24.u3_29fixp = shl i32 %rem23, 29, !taffo.info !172
  %mul25 = mul nsw i32 5, %nj, !taffo.info !173, !taffo.constinfo !21
  %conv26.u6_26fixp = shl i32 %mul25, 26, !taffo.info !175, !taffo.constinfo !21
  %5 = lshr i32 %conv24.u3_29fixp, 1, !taffo.info !172
  %6 = lshr i32 %conv26.u6_26fixp, 1, !taffo.info !175, !taffo.constinfo !21
  %7 = ashr i32 %5, 3, !taffo.info !172
  %8 = call i32 @llvm.sdiv.fix.i32(i32 %7, i32 %6, i32 25), !taffo.info !177
  %div27.u3_29fixp = shl i32 %8, 4, !taffo.info !180
  %arrayidx28.u4_28fixp = getelementptr inbounds [8 x i32], [8 x i32]* %B.u4_28fixp, i32 %i.1, !taffo.info !181
  %arrayidx29.u4_28fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx28.u4_28fixp, i32 0, i32 %j.1, !taffo.info !181
  %9 = lshr i32 %div27.u3_29fixp, 1, !taffo.info !180
  store i32 %9, i32* %arrayidx29.u4_28fixp, align 4, !taffo.info !101
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19
  %inc31 = add nsw i32 %j.1, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond16, !llvm.loop !182

for.end32:                                        ; preds = %for.cond16
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond12, !llvm.loop !183

for.end35:                                        ; preds = %for.cond12
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc57, %for.inc56 ], !taffo.info !137, !taffo.initweight !139
  %cmp37 = icmp slt i32 %i.2, %nj, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp37, label %for.body39, label %for.end58, !taffo.info !142, !taffo.initweight !144

for.body39:                                       ; preds = %for.cond36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.body39
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc54, %for.inc53 ], !taffo.info !137, !taffo.initweight !139
  %cmp41 = icmp slt i32 %j.2, %nm, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp41, label %for.body43, label %for.end55, !taffo.info !142, !taffo.initweight !144

for.body43:                                       ; preds = %for.cond40
  %add44 = add nsw i32 %j.2, 3, !taffo.info !184, !taffo.initweight !141, !taffo.constinfo !21
  %mul45 = mul nsw i32 %i.2, %add44, !taffo.info !186, !taffo.initweight !141
  %rem46 = srem i32 %mul45, %nl, !taffo.info !188, !taffo.initweight !144
  %conv47.u4_28fixp = shl i32 %rem46, 28, !taffo.info !190
  %mul48 = mul nsw i32 5, %nl, !taffo.info !191, !taffo.constinfo !21
  %conv49.u6_26fixp = shl i32 %mul48, 26, !taffo.info !193, !taffo.constinfo !21
  %10 = lshr i32 %conv47.u4_28fixp, 1, !taffo.info !190
  %11 = lshr i32 %conv49.u6_26fixp, 1, !taffo.info !193, !taffo.constinfo !21
  %12 = ashr i32 %10, 2, !taffo.info !190
  %13 = call i32 @llvm.sdiv.fix.i32(i32 %12, i32 %11, i32 25), !taffo.info !194
  %div50.u1_31fixp = shl i32 %13, 6, !taffo.info !196
  %arrayidx51.u4_28fixp = getelementptr inbounds [14 x i32], [14 x i32]* %C.u4_28fixp, i32 %i.2, !taffo.info !198
  %arrayidx52.u4_28fixp = getelementptr inbounds [14 x i32], [14 x i32]* %arrayidx51.u4_28fixp, i32 0, i32 %j.2, !taffo.info !198
  %14 = lshr i32 %div50.u1_31fixp, 3, !taffo.info !196
  store i32 %14, i32* %arrayidx52.u4_28fixp, align 4, !taffo.info !101
  br label %for.inc53

for.inc53:                                        ; preds = %for.body43
  %inc54 = add nsw i32 %j.2, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond40, !llvm.loop !199

for.end55:                                        ; preds = %for.cond40
  br label %for.inc56

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond36, !llvm.loop !200

for.end58:                                        ; preds = %for.cond36
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc80, %for.end58
  %i.3 = phi i32 [ 0, %for.end58 ], [ %inc81, %for.inc80 ], !taffo.info !137, !taffo.initweight !139
  %cmp60 = icmp slt i32 %i.3, %nm, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp60, label %for.body62, label %for.end82, !taffo.info !142, !taffo.initweight !144

for.body62:                                       ; preds = %for.cond59
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc77, %for.body62
  %j.3 = phi i32 [ 0, %for.body62 ], [ %inc78, %for.inc77 ], !taffo.info !137, !taffo.initweight !139
  %cmp64 = icmp slt i32 %j.3, %nl, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp64, label %for.body66, label %for.end79, !taffo.info !142, !taffo.initweight !144

for.body66:                                       ; preds = %for.cond63
  %add67 = add nsw i32 %j.3, 2, !taffo.info !201, !taffo.initweight !141, !taffo.constinfo !21
  %mul68 = mul nsw i32 %i.3, %add67, !taffo.info !203, !taffo.initweight !141
  %add69 = add nsw i32 %mul68, 2, !taffo.info !205, !taffo.initweight !144, !taffo.constinfo !21
  %rem70 = srem i32 %add69, %nk, !taffo.info !207, !taffo.initweight !151
  %conv71.u4_28fixp = shl i32 %rem70, 28, !taffo.info !209
  %mul72 = mul nsw i32 5, %nk, !taffo.info !210, !taffo.constinfo !21
  %conv73.u6_26fixp = shl i32 %mul72, 26, !taffo.info !212, !taffo.constinfo !21
  %15 = lshr i32 %conv71.u4_28fixp, 1, !taffo.info !209
  %16 = lshr i32 %conv73.u6_26fixp, 1, !taffo.info !212, !taffo.constinfo !21
  %17 = ashr i32 %15, 2, !taffo.info !209
  %18 = call i32 @llvm.sdiv.fix.i32(i32 %17, i32 %16, i32 25), !taffo.info !213
  %div74.u1_31fixp = shl i32 %18, 6, !taffo.info !215
  %arrayidx75.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %D.u4_28fixp, i32 %i.3, !taffo.info !216
  %arrayidx76.u4_28fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx75.u4_28fixp, i32 0, i32 %j.3, !taffo.info !216
  %19 = lshr i32 %div74.u1_31fixp, 3, !taffo.info !215
  store i32 %19, i32* %arrayidx76.u4_28fixp, align 4, !taffo.info !101
  br label %for.inc77

for.inc77:                                        ; preds = %for.body66
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond63, !llvm.loop !217

for.end79:                                        ; preds = %for.cond63
  br label %for.inc80

for.inc80:                                        ; preds = %for.end79
  %inc81 = add nsw i32 %i.3, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond59, !llvm.loop !218

for.end82:                                        ; preds = %for.cond59
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc96, %for.end82
  %i.4 = phi i32 [ 0, %for.end82 ], [ %inc97, %for.inc96 ], !taffo.info !137, !taffo.initweight !139
  %cmp84 = icmp slt i32 %i.4, %ni, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp84, label %for.body86, label %for.end98, !taffo.info !142, !taffo.initweight !144

for.body86:                                       ; preds = %for.cond83
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc93, %for.body86
  %j.4 = phi i32 [ 0, %for.body86 ], [ %inc94, %for.inc93 ], !taffo.info !137, !taffo.initweight !139
  %cmp88 = icmp slt i32 %j.4, %nj, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp88, label %for.body90, label %for.end95, !taffo.info !142, !taffo.initweight !144

for.body90:                                       ; preds = %for.cond87
  %arrayidx91.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %E.u9_23fixp, i32 %i.4, !taffo.info !219
  %arrayidx92.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx91.u9_23fixp, i32 0, i32 %j.4, !taffo.info !219
  store i32 0, i32* %arrayidx92.u9_23fixp, align 4, !taffo.info !101, !taffo.constinfo !102
  br label %for.inc93

for.inc93:                                        ; preds = %for.body90
  %inc94 = add nsw i32 %j.4, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond87, !llvm.loop !220

for.end95:                                        ; preds = %for.cond87
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %inc97 = add nsw i32 %i.4, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond83, !llvm.loop !221

for.end98:                                        ; preds = %for.cond83
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc112, %for.end98
  %i.5 = phi i32 [ 0, %for.end98 ], [ %inc113, %for.inc112 ], !taffo.info !137, !taffo.initweight !139
  %cmp100 = icmp slt i32 %i.5, %nj, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp100, label %for.body102, label %for.end114, !taffo.info !142, !taffo.initweight !144

for.body102:                                      ; preds = %for.cond99
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.body102
  %j.5 = phi i32 [ 0, %for.body102 ], [ %inc110, %for.inc109 ], !taffo.info !137, !taffo.initweight !139
  %cmp104 = icmp slt i32 %j.5, %nl, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp104, label %for.body106, label %for.end111, !taffo.info !142, !taffo.initweight !144

for.body106:                                      ; preds = %for.cond103
  %arrayidx107.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %F.u10_22fixp, i32 %i.5, !taffo.info !222
  %arrayidx108.u10_22fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx107.u10_22fixp, i32 0, i32 %j.5, !taffo.info !222
  store i32 0, i32* %arrayidx108.u10_22fixp, align 4, !taffo.info !101, !taffo.constinfo !102
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %inc110 = add nsw i32 %j.5, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond103, !llvm.loop !223

for.end111:                                       ; preds = %for.cond103
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %inc113 = add nsw i32 %i.5, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond99, !llvm.loop !224

for.end114:                                       ; preds = %for.cond99
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc128, %for.end114
  %i.6 = phi i32 [ 0, %for.end114 ], [ %inc129, %for.inc128 ], !taffo.info !137, !taffo.initweight !139
  %cmp116 = icmp slt i32 %i.6, %ni, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp116, label %for.body118, label %for.end130, !taffo.info !142, !taffo.initweight !144

for.body118:                                      ; preds = %for.cond115
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc125, %for.body118
  %j.6 = phi i32 [ 0, %for.body118 ], [ %inc126, %for.inc125 ], !taffo.info !137, !taffo.initweight !139
  %cmp120 = icmp slt i32 %j.6, %nl, !taffo.info !140, !taffo.initweight !141
  br i1 %cmp120, label %for.body122, label %for.end127, !taffo.info !142, !taffo.initweight !144

for.body122:                                      ; preds = %for.cond119
  %arrayidx123.u20_12fixp = getelementptr inbounds [12 x i32], [12 x i32]* %G.u20_12fixp, i32 %i.6, !taffo.info !225
  %arrayidx124.u20_12fixp = getelementptr inbounds [12 x i32], [12 x i32]* %arrayidx123.u20_12fixp, i32 0, i32 %j.6, !taffo.info !225
  store i32 0, i32* %arrayidx124.u20_12fixp, align 4, !taffo.info !101, !taffo.constinfo !102
  br label %for.inc125

for.inc125:                                       ; preds = %for.body122
  %inc126 = add nsw i32 %j.6, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond119, !llvm.loop !226

for.end127:                                       ; preds = %for.cond119
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %inc129 = add nsw i32 %i.6, 1, !taffo.info !163, !taffo.initweight !141, !taffo.constinfo !21
  br label %for.cond115, !llvm.loop !227

for.end130:                                       ; preds = %for.cond115
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.4_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u4_28fixp, i32 noundef %factor) #0 !taffo.initweight !228 !taffo.funinfo !229 !taffo.sourceFunction !232 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !87
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %0, !taffo.info !44
  %arrayidx4.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx.u4_28fixp, i32 %j.0, !taffo.info !44
  %u4_28fixp = load i32, i32* %arrayidx4.u4_28fixp, align 4, !taffo.info !44
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !233
  %1 = lshr i32 %u4_28fixp, 1, !taffo.info !44
  %2 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !233
  %3 = ashr i32 %1, 6, !taffo.info !44
  %4 = ashr i32 %2, 3, !taffo.info !233
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 21), !taffo.info !234
  %mul.u10_22fixp = shl i32 %5, 1, !taffo.info !236
  %6 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx5.u4_28fixp = getelementptr inbounds i32, i32* %val.u4_28fixp, i32 %6, !taffo.info !44
  %arrayidx6.u4_28fixp = getelementptr inbounds i32, i32* %arrayidx5.u4_28fixp, i32 %j.0, !taffo.info !44
  %7 = shl i32 %mul.u10_22fixp, 6, !taffo.info !236
  store i32 %7, i32* %arrayidx6.u4_28fixp, align 4, !taffo.info !62
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !237

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !238

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.3_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u9_23fixp, i32 noundef %factor) #0 !taffo.initweight !228 !taffo.funinfo !239 !taffo.sourceFunction !232 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !87
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %0, !taffo.info !41
  %arrayidx4.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx.u9_23fixp, i32 %j.0, !taffo.info !41
  %u9_23fixp = load i32, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !41
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !233
  %1 = lshr i32 %u9_23fixp, 1, !taffo.info !41
  %2 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !233
  %3 = ashr i32 %1, 6, !taffo.info !41
  %4 = ashr i32 %2, 8, !taffo.info !233
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 16), !taffo.info !240
  %mul.u15_17fixp = shl i32 %5, 1, !taffo.info !243
  %6 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx5.u9_23fixp = getelementptr inbounds i32, i32* %val.u9_23fixp, i32 %6, !taffo.info !41
  %arrayidx6.u9_23fixp = getelementptr inbounds i32, i32* %arrayidx5.u9_23fixp, i32 %j.0, !taffo.info !41
  %7 = shl i32 %mul.u15_17fixp, 6, !taffo.info !243
  store i32 %7, i32* %arrayidx6.u9_23fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !245

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !246

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.6_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u10_22fixp, i32 noundef %factor) #0 !taffo.initweight !228 !taffo.funinfo !247 !taffo.sourceFunction !232 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !87
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %0, !taffo.info !49
  %arrayidx4.u10_22fixp = getelementptr inbounds i32, i32* %arrayidx.u10_22fixp, i32 %j.0, !taffo.info !49
  %u10_22fixp = load i32, i32* %arrayidx4.u10_22fixp, align 4, !taffo.info !49
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !233
  %1 = lshr i32 %u10_22fixp, 1, !taffo.info !49
  %2 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !233
  %3 = ashr i32 %1, 6, !taffo.info !49
  %4 = ashr i32 %2, 9, !taffo.info !233
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 15), !taffo.info !248
  %mul.u16_16fixp = shl i32 %5, 1, !taffo.info !251
  %6 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx5.u10_22fixp = getelementptr inbounds i32, i32* %val.u10_22fixp, i32 %6, !taffo.info !49
  %arrayidx6.u10_22fixp = getelementptr inbounds i32, i32* %arrayidx5.u10_22fixp, i32 %j.0, !taffo.info !49
  %7 = shl i32 %mul.u16_16fixp, 6, !taffo.info !251
  store i32 %7, i32* %arrayidx6.u10_22fixp, align 4, !taffo.info !64
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !253

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !254

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_2d.9_fixp(i32 noundef %n, i32 noundef %m, i32* noundef %val.u20_12fixp, i32 noundef %factor) #0 !taffo.initweight !228 !taffo.funinfo !255 !taffo.sourceFunction !232 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !71
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !87
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !71
  %cmp2 = icmp slt i32 %j.0, %m, !taffo.info !87
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %0 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx.u20_12fixp = getelementptr inbounds i32, i32* %val.u20_12fixp, i32 %0, !taffo.info !56
  %arrayidx4.u20_12fixp = getelementptr inbounds i32, i32* %arrayidx.u20_12fixp, i32 %j.0, !taffo.info !56
  %u20_12fixp = load i32, i32* %arrayidx4.u20_12fixp, align 4, !taffo.info !56
  %conv.u7_25fixp = shl i32 %factor, 25, !taffo.info !233
  %1 = lshr i32 %u20_12fixp, 1, !taffo.info !56
  %2 = lshr i32 %conv.u7_25fixp, 1, !taffo.info !233
  %3 = ashr i32 %1, 6, !taffo.info !56
  %4 = ashr i32 %2, 19, !taffo.info !233
  %5 = call i32 @llvm.smul.fix.i32(i32 %3, i32 %4, i32 5), !taffo.info !256
  %mul.u26_6fixp = shl i32 %5, 1, !taffo.info !259
  %6 = mul nsw i32 %i.0, %m, !taffo.info !89
  %arrayidx5.u20_12fixp = getelementptr inbounds i32, i32* %val.u20_12fixp, i32 %6, !taffo.info !56
  %arrayidx6.u20_12fixp = getelementptr inbounds i32, i32* %arrayidx5.u20_12fixp, i32 %j.0, !taffo.info !56
  %7 = shl i32 %mul.u26_6fixp, 6, !taffo.info !259
  store i32 %7, i32* %arrayidx6.u20_12fixp, align 4, !taffo.info !67
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !261

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !87, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !262

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
!1 = !{double 0.000000e+00, double 0x412BCB0680000000}
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
!28 = distinct !{!28, !23}
!29 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!30 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!31 = distinct !{null, null, null, null, null, null, null}
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
!42 = !{!"fixp", i32 32, i32 23}
!43 = !{double 0.000000e+00, double 0x407BBBBBE0157EED}
!44 = !{!45, !46, i1 false, i2 -1}
!45 = !{!"fixp", i32 32, i32 28}
!46 = !{double 0.000000e+00, double 0x402555556084A516}
!47 = !{!45, !48, i1 false, i2 -1}
!48 = !{double 0.000000e+00, double 1.120000e+01}
!49 = !{!50, !51, i1 false, i2 -1}
!50 = !{!"fixp", i32 32, i32 22}
!51 = !{double 0.000000e+00, double 0x4080624DE00D1B71}
!52 = !{!45, !53, i1 false, i2 -1}
!53 = !{double 0.000000e+00, double 0x402777778DD616F8}
!54 = !{!45, !55, i1 false, i2 -1}
!55 = !{double 0.000000e+00, double 1.152000e+01}
!56 = !{!57, !1, i1 false, i2 -1}
!57 = !{!"fixp", i32 32, i32 12}
!58 = !{!"G"}
!59 = !{i1 false, !43, i1 false, i2 -1}
!60 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = !{i1 false, !46, i1 false, i2 -1}
!63 = !{i1 false, !48, i1 false, i2 -1}
!64 = !{i1 false, !51, i1 false, i2 -1}
!65 = !{i1 false, !53, i1 false, i2 -1}
!66 = !{i1 false, !55, i1 false, i2 -1}
!67 = !{i1 false, !1, i1 false, i2 -1}
!68 = !{i1 false}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 7.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 1.000000e+00}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 9.100000e+01}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 1.000000e+00, double 9.100000e+01}
!77 = distinct !{!77, !23}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 7.000000e+00}
!80 = distinct !{!80, !23}
!81 = !{i1 false, i1 false, i1 false, i1 false}
!82 = !{i32 1, !83, i32 1, !85, i32 1, !0}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 6.000000e+00, double 6.000000e+00}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 1.200000e+01, double 1.200000e+01}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 1.000000e+00, double 1.000000e+00}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 0.000000e+00, double 0.000000e+00}
!91 = !{i1 false, i1 false, i1 false}
!92 = distinct !{!92, !23}
!93 = distinct !{!93, !23}
!94 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2}
!95 = !{i32 1, !83, i32 1, !96, i32 1, !16, i32 1, !85, i32 1, !98, i32 1, !41, i32 1, !44, i32 1, !47, i32 1, !49, i32 1, !52, i32 1, !54, i32 1, !56}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 8.000000e+00, double 8.000000e+00}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 1.400000e+01, double 1.400000e+01}
!100 = distinct !{null}
!101 = !{i1 false, i1 false, i1 false, i2 1}
!102 = !{!89, i1 false}
!103 = !{!104, !105, i1 false, i2 -1}
!104 = !{!"fixp", i32 -32, i32 24}
!105 = !{double 0.000000e+00, double 0x405DDDDDED8680B8}
!106 = !{!107, !105, i1 false, i2 -1}
!107 = !{!"fixp", i32 32, i32 25}
!108 = !{!50, !43, i1 false, i2 -1}
!109 = !{!50, !110, i1 false, i2 -1}
!110 = !{double 0.000000e+00, double 0x40819999ADBB8F8E}
!111 = distinct !{!111, !23}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = !{!115, !116, i1 false, i2 -1}
!115 = !{!"fixp", i32 -32, i32 21}
!116 = !{double 0.000000e+00, double 0x4060E56051A46275}
!117 = !{!50, !116, i1 false, i2 -1}
!118 = !{!50, !119, i1 false, i2 -1}
!119 = !{double 0.000000e+00, double 0x40849BA5F476340E}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !23}
!123 = !{!124, !125, i1 false, i2 -1}
!124 = !{!"fixp", i32 -32, i32 13}
!125 = !{double 0.000000e+00, double 0x410C6620BAA52758}
!126 = !{!127, !125, i1 false, i2 -1}
!127 = !{!"fixp", i32 32, i32 14}
!128 = !{!129, !1, i1 false, i2 -1}
!129 = !{!"fixp", i32 32, i32 11}
!130 = !{!129, !131, i1 false, i2 -1}
!131 = !{double 0.000000e+00, double 0x413172475754A4EB}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
!134 = distinct !{!134, !23}
!135 = !{i32 1, !83, i32 1, !96, i32 1, !16, i32 1, !85, i32 1, !98, i32 1, !44, i32 1, !47, i32 1, !52, i32 1, !54, i32 1, !41, i32 1, !49, i32 1, !56}
!136 = distinct !{null}
!137 = !{i1 false, !138, i1 false, i2 1}
!138 = !{double 0.000000e+00, double 1.500000e+01}
!139 = !{i32 0}
!140 = !{i1 false, !72, i1 false, i2 1}
!141 = !{i32 2}
!142 = !{i1 false, !143, i1 false, i2 1}
!143 = !{double 0.000000e+00, double 1.400000e+01}
!144 = !{i32 3}
!145 = !{i1 false, !146, i1 false, i2 1}
!146 = !{double 0.000000e+00, double 1.960000e+02}
!147 = !{i1 false, !148, i1 false, i2 1}
!148 = !{double 1.000000e+00, double 1.970000e+02}
!149 = !{i1 false, !150, i1 false, i2 1}
!150 = !{double 0.000000e+00, double 5.000000e+00}
!151 = !{i32 4}
!152 = !{!153, !150, i1 false, i2 1}
!153 = !{!"fixp", i32 32, i32 29}
!154 = !{i1 false, !155, i1 false, i2 0}
!155 = !{double 3.000000e+01, double 3.000000e+01}
!156 = !{!157, !155, i1 false, i2 1}
!157 = !{!"fixp", i32 32, i32 27}
!158 = !{!159, !160, i1 false, i2 1}
!159 = !{!"fixp", i32 -32, i32 26}
!160 = !{double 0.000000e+00, double 0x3FC5555555555555}
!161 = !{!153, !160, i1 false, i2 1}
!162 = !{!45, !46, i1 false, i2 1}
!163 = !{i1 false, !164, i1 false, i2 1}
!164 = !{double 1.000000e+00, double 1.500000e+01}
!165 = distinct !{!165, !23}
!166 = distinct !{!166, !23}
!167 = !{i1 false, !168, i1 false, i2 1}
!168 = !{double 0.000000e+00, double 2.100000e+02}
!169 = !{i1 false, !170, i1 false, i2 1}
!170 = !{double 2.000000e+00, double 2.120000e+02}
!171 = !{i1 false, !70, i1 false, i2 1}
!172 = !{!153, !70, i1 false, i2 1}
!173 = !{i1 false, !174, i1 false, i2 0}
!174 = !{double 4.000000e+01, double 4.000000e+01}
!175 = !{!176, !174, i1 false, i2 1}
!176 = !{!"fixp", i32 32, i32 26}
!177 = !{!178, !179, i1 false, i2 1}
!178 = !{!"fixp", i32 -32, i32 25}
!179 = !{double 0.000000e+00, double 1.750000e-01}
!180 = !{!153, !179, i1 false, i2 1}
!181 = !{!45, !48, i1 false, i2 1}
!182 = distinct !{!182, !23}
!183 = distinct !{!183, !23}
!184 = !{i1 false, !185, i1 false, i2 1}
!185 = !{double 3.000000e+00, double 1.700000e+01}
!186 = !{i1 false, !187, i1 false, i2 1}
!187 = !{double 0.000000e+00, double 2.380000e+02}
!188 = !{i1 false, !189, i1 false, i2 1}
!189 = !{double 0.000000e+00, double 1.100000e+01}
!190 = !{!45, !189, i1 false, i2 1}
!191 = !{i1 false, !192, i1 false, i2 0}
!192 = !{double 6.000000e+01, double 6.000000e+01}
!193 = !{!176, !192, i1 false, i2 1}
!194 = !{!178, !195, i1 false, i2 1}
!195 = !{double 0.000000e+00, double 0x3FC7777777777777}
!196 = !{!197, !195, i1 false, i2 1}
!197 = !{!"fixp", i32 32, i32 31}
!198 = !{!45, !53, i1 false, i2 1}
!199 = distinct !{!199, !23}
!200 = distinct !{!200, !23}
!201 = !{i1 false, !202, i1 false, i2 1}
!202 = !{double 2.000000e+00, double 1.600000e+01}
!203 = !{i1 false, !204, i1 false, i2 1}
!204 = !{double 0.000000e+00, double 2.240000e+02}
!205 = !{i1 false, !206, i1 false, i2 1}
!206 = !{double 2.000000e+00, double 2.260000e+02}
!207 = !{i1 false, !208, i1 false, i2 1}
!208 = !{double 0.000000e+00, double 9.000000e+00}
!209 = !{!45, !208, i1 false, i2 1}
!210 = !{i1 false, !211, i1 false, i2 0}
!211 = !{double 5.000000e+01, double 5.000000e+01}
!212 = !{!176, !211, i1 false, i2 1}
!213 = !{!178, !214, i1 false, i2 1}
!214 = !{double 0.000000e+00, double 1.800000e-01}
!215 = !{!197, !214, i1 false, i2 1}
!216 = !{!45, !55, i1 false, i2 1}
!217 = distinct !{!217, !23}
!218 = distinct !{!218, !23}
!219 = !{!42, !43, i1 false, i2 1}
!220 = distinct !{!220, !23}
!221 = distinct !{!221, !23}
!222 = !{!50, !51, i1 false, i2 1}
!223 = distinct !{!223, !23}
!224 = distinct !{!224, !23}
!225 = !{!57, !1, i1 false, i2 1}
!226 = distinct !{!226, !23}
!227 = distinct !{!227, !23}
!228 = !{i32 -1, i32 -1, i32 3, i32 -1}
!229 = !{i32 1, !83, i32 1, !16, i32 1, !44, i32 1, !230}
!230 = !{i1 false, !231, i1 false, i2 0}
!231 = !{double 6.400000e+01, double 6.400000e+01}
!232 = !{void (i32, i32, float*, i32)* @scale_2d}
!233 = !{!107, !231, i1 false, i2 1}
!234 = !{!115, !235, i1 false, i2 -1}
!235 = !{double 0.000000e+00, double 0x408555556084A516}
!236 = !{!50, !235, i1 false, i2 -1}
!237 = distinct !{!237, !23}
!238 = distinct !{!238, !23}
!239 = !{i32 1, !83, i32 1, !96, i32 1, !41, i32 1, !230}
!240 = !{!241, !242, i1 false, i2 -1}
!241 = !{!"fixp", i32 -32, i32 16}
!242 = !{double 0.000000e+00, double 0x40DBBBBBE0157EED}
!243 = !{!244, !242, i1 false, i2 -1}
!244 = !{!"fixp", i32 32, i32 17}
!245 = distinct !{!245, !23}
!246 = distinct !{!246, !23}
!247 = !{i32 1, !96, i32 1, !85, i32 1, !49, i32 1, !230}
!248 = !{!249, !250, i1 false, i2 -1}
!249 = !{!"fixp", i32 -32, i32 15}
!250 = !{double 0.000000e+00, double 0x40E0624DE00D1B71}
!251 = !{!252, !250, i1 false, i2 -1}
!252 = !{!"fixp", i32 32, i32 16}
!253 = distinct !{!253, !23}
!254 = distinct !{!254, !23}
!255 = !{i32 1, !83, i32 1, !85, i32 1, !56, i32 1, !230}
!256 = !{!257, !258, i1 false, i2 -1}
!257 = !{!"fixp", i32 -32, i32 5}
!258 = !{double 0.000000e+00, double 0x418BCB0680000000}
!259 = !{!260, !258, i1 false, i2 -1}
!260 = !{!"fixp", i32 32, i32 6}
!261 = distinct !{!261, !23}
!262 = distinct !{!262, !23}
