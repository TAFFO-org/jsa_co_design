; ModuleID = './build/bin/fixed/ludcmp/24/ludcmp-standard-1-fixed-24.out.ll.2.taffotmp.ll'
source_filename = "./sources/ludcmp.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [32 x i8] c"scalar(range(0.1,8.1725) final)\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [19 x i8] c"./sources/ludcmp.c\00", section "llvm.metadata", !taffo.info !2
@.str.2 = private unnamed_addr constant [32 x i8] c"scalar(range(1.0,8.1725) final)\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [31 x i8] c"scalar(range(4.025,4.5) final)\00", section "llvm.metadata", !taffo.info !0
@.str.4 = private unnamed_addr constant [52 x i8] c"target('x') scalar(range(-0.037947,3.998521) final)\00", section "llvm.metadata", !taffo.info !4
@.str.5 = private unnamed_addr constant [31 x i8] c"scalar(range(0.0,4.025) final)\00", section "llvm.metadata", !taffo.info !0
@x_float = dso_local global [20 x float] zeroinitializer, align 4, !taffo.info !6
@.str.6 = private unnamed_addr constant [21 x i8] c"scalar(range(0, 20))\00", section "llvm.metadata", !taffo.info !0
@.str.7 = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !0
@.str.8 = private unnamed_addr constant [31 x i8] c"scalar(range(-200, 200) final)\00", section "llvm.metadata", !taffo.info !0
@stderr = external global %struct._IO_FILE*, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.10 = private unnamed_addr constant [8 x i8] c"%0.16f \00", align 1, !taffo.info !10

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtf_PB(float noundef %val) #0 !taffo.initweight !19 !taffo.funinfo !20 {
entry:
  %div = fdiv float %val, 1.000000e+01, !taffo.constinfo !21
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
  %mul3 = fmul float 2.000000e+00, %x.0, !taffo.constinfo !24
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
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then
  %x.2 = phi float [ 0.000000e+00, %if.then ], [ %x.0, %for.end ]
  ret float %x.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_start() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !30 !taffo.funinfo !30 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.start !33 {
entry:
  %A = alloca [20 x [20 x float]], align 4, !taffo.initweight !34, !taffo.info !35
  %B = alloca [20 x [20 x float]], align 4, !taffo.initweight !34, !taffo.info !37
  %b = alloca [20 x float], align 4, !taffo.initweight !34, !taffo.info !39
  %x = alloca [20 x float], align 4, !taffo.initweight !34, !taffo.info !41, !taffo.target !42
  %y = alloca [20 x float], align 4, !taffo.initweight !34, !taffo.info !43
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.initweight !45, !taffo.info !35
  %B2 = bitcast [20 x [20 x float]]* %B to i8*, !taffo.initweight !45, !taffo.info !37
  %b3 = bitcast [20 x float]* %b to i8*, !taffo.initweight !45, !taffo.info !39
  %x4 = bitcast [20 x float]* %x to i8*, !taffo.initweight !45, !taffo.info !41, !taffo.target !42
  %y5 = bitcast [20 x float]* %y to i8*, !taffo.initweight !45, !taffo.info !43
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !35
  %arraydecay6 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %B, i32 0, i32 0, !taffo.initweight !45, !taffo.info !37
  %arraydecay7 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39
  %arraydecay8 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41, !taffo.target !42
  %arraydecay9 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43
  call void @init_array.2(i32 noundef 20, [20 x float]* noundef %arraydecay, [20 x float]* noundef %arraydecay6, float* noundef %arraydecay7, float* noundef %arraydecay8, float* noundef %arraydecay9), !taffo.initweight !46, !taffo.info !35, !taffo.originalCall !47, !taffo.constinfo !48
  call void @timer_start(), !taffo.constinfo !49
  %arraydecay10 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.initweight !45, !taffo.info !35
  %arraydecay11 = getelementptr inbounds [20 x float], [20 x float]* %b, i32 0, i32 0, !taffo.initweight !45, !taffo.info !39
  %arraydecay12 = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 0, !taffo.initweight !45, !taffo.info !41, !taffo.target !42
  %arraydecay13 = getelementptr inbounds [20 x float], [20 x float]* %y, i32 0, i32 0, !taffo.initweight !45, !taffo.info !43
  call void @kernel_ludcmp.1(i32 noundef 20, [20 x float]* noundef %arraydecay10, float* noundef %arraydecay11, float* noundef %arraydecay12, float* noundef %arraydecay13), !taffo.initweight !46, !taffo.info !35, !taffo.originalCall !50, !taffo.constinfo !51
  call void @timer_stop(), !taffo.constinfo !49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !54
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %x, i32 0, i32 %i.0, !taffo.initweight !45, !taffo.info !41, !taffo.target !42
  %0 = load float, float* %arrayidx, align 4, !taffo.initweight !46, !taffo.info !41, !taffo.target !42
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* @x_float, i32 0, i32 %i.0, !taffo.info !6
  store float %0, float* %arrayidx14, align 4, !taffo.initweight !56, !taffo.info !41, !taffo.target !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !57, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  call void @print_array(i32 noundef 20, float* noundef getelementptr inbounds ([20 x float], [20 x float]* @x_float, i32 0, i32 0)), !taffo.constinfo !60
  ret i32 0
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !61 !taffo.funinfo !62 void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !63 !taffo.funinfo !64 !taffo.equivalentChild !65 {
entry:
  %conv = sitofp i32 %n to float, !taffo.initweight !46, !taffo.info !66
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !67
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !46, !taffo.info !67
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !56, !taffo.info !67

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !46, !taffo.info !66
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !56, !taffo.info !66, !taffo.constinfo !69
  %arrayidx5 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !46, !taffo.info !66
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !56, !taffo.info !66, !taffo.constinfo !69
  %add = add nsw i32 %i.0, 1, !taffo.initweight !46, !taffo.info !67, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !56, !taffo.info !67
  %div = fdiv float %conv6, %conv, !taffo.initweight !46, !taffo.info !66
  %conv7 = fpext float %div to double, !taffo.initweight !56, !taffo.info !66
  %div8 = fdiv double %conv7, 2.000000e+00, !taffo.initweight !72, !taffo.info !66, !taffo.constinfo !73
  %add9 = fadd double %div8, 4.000000e+00, !taffo.initweight !74, !taffo.info !66, !taffo.constinfo !75
  %conv10 = fptrunc double %add9 to float, !taffo.initweight !78, !taffo.info !66
  %arrayidx11 = getelementptr inbounds float, float* %b, i32 %i.0, !taffo.initweight !46, !taffo.info !66
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !56, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !46, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc42, %for.inc41 ], !taffo.initweight !34, !taffo.info !67
  %cmp13 = icmp slt i32 %i.1, %n, !taffo.initweight !46, !taffo.info !67
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.initweight !56, !taffo.info !67

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %j.0 = phi i32 [ 0, %for.body15 ], [ %inc27, %for.inc26 ], !taffo.initweight !34, !taffo.info !67
  %cmp17 = icmp sle i32 %j.0, %i.1, !taffo.initweight !46, !taffo.info !67
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.initweight !56, !taffo.info !67

for.body19:                                       ; preds = %for.cond16
  %sub = sub nsw i32 0, %j.0, !taffo.initweight !46, !taffo.info !67, !taffo.constinfo !27
  %rem = srem i32 %sub, %n, !taffo.initweight !56, !taffo.info !67
  %conv20 = sitofp i32 %rem to float, !taffo.initweight !72, !taffo.info !67
  %conv21 = sitofp i32 %n to float
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !74, !taffo.info !67
  %add23 = fadd float %div22, 1.000000e+00, !taffo.initweight !74, !taffo.info !66, !taffo.constinfo !80
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !46, !taffo.info !66
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i32 0, i32 %j.0, !taffo.initweight !46, !taffo.info !66
  store float %add23, float* %arrayidx25, align 4, !taffo.initweight !56, !taffo.info !66
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nsw i32 %j.0, 1, !taffo.initweight !46, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !83

for.end28:                                        ; preds = %for.cond16
  %add29 = add nsw i32 %i.1, 1, !taffo.initweight !46, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %j.1 = phi i32 [ %add29, %for.end28 ], [ %inc37, %for.inc36 ], !taffo.initweight !34, !taffo.info !67
  %cmp31 = icmp slt i32 %j.1, %n, !taffo.initweight !46, !taffo.info !67
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.initweight !56, !taffo.info !67

for.body33:                                       ; preds = %for.cond30
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !46, !taffo.info !66
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i32 0, i32 %j.1, !taffo.initweight !46, !taffo.info !66
  store float 0.000000e+00, float* %arrayidx35, align 4, !taffo.initweight !56, !taffo.info !66, !taffo.constinfo !69
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %inc37 = add nsw i32 %j.1, 1, !taffo.initweight !46, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond30, !llvm.loop !84

for.end38:                                        ; preds = %for.cond30
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !46, !taffo.info !66
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i32 0, i32 %i.1, !taffo.initweight !46, !taffo.info !66
  store float 1.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !56, !taffo.info !66, !taffo.constinfo !85
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %inc42 = add nsw i32 %i.1, 1, !taffo.initweight !46, !taffo.info !67, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !86

for.end43:                                        ; preds = %for.cond12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %r.0 = phi i32 [ 0, %for.end43 ], [ %inc58, %for.inc57 ]
  %cmp45 = icmp slt i32 %r.0, %n
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %s.0 = phi i32 [ 0, %for.body47 ], [ %inc55, %for.inc54 ]
  %cmp49 = icmp slt i32 %s.0, %n
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.0
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %s.0
  store float 0.000000e+00, float* %arrayidx53, align 4, !taffo.initweight !74, !taffo.info !66, !taffo.constinfo !69
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %inc55 = add nsw i32 %s.0, 1, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !87

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %r.0, 1, !taffo.constinfo !27
  br label %for.cond44, !llvm.loop !88

for.end59:                                        ; preds = %for.cond44
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %t.0 = phi i32 [ 0, %for.end59 ], [ %inc86, %for.inc85 ]
  %cmp61 = icmp slt i32 %t.0, %n
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %r.1 = phi i32 [ 0, %for.body63 ], [ %inc83, %for.inc82 ]
  %cmp65 = icmp slt i32 %r.1, %n
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %s.1 = phi i32 [ 0, %for.body67 ], [ %inc80, %for.inc79 ]
  %cmp69 = icmp slt i32 %s.1, %n
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.1
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %t.0
  %0 = load float, float* %arrayidx73, align 4
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %s.1
  %arrayidx75 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx74, i32 0, i32 %t.0
  %1 = load float, float* %arrayidx75, align 4
  %mul = fmul float %0, %1
  %arrayidx76 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.1
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %s.1
  %2 = load float, float* %arrayidx77, align 4
  %add78 = fadd float %2, %mul
  store float %add78, float* %arrayidx77, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %inc80 = add nsw i32 %s.1, 1, !taffo.constinfo !27
  br label %for.cond68, !llvm.loop !89

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %r.1, 1, !taffo.constinfo !27
  br label %for.cond64, !llvm.loop !90

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %t.0, 1, !taffo.constinfo !27
  br label %for.cond60, !llvm.loop !91

for.end87:                                        ; preds = %for.cond60
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %r.2 = phi i32 [ 0, %for.end87 ], [ %inc104, %for.inc103 ]
  %cmp89 = icmp slt i32 %r.2, %n
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %s.2 = phi i32 [ 0, %for.body91 ], [ %inc101, %for.inc100 ]
  %cmp93 = icmp slt i32 %s.2, %n
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.2
  %arrayidx97 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i32 0, i32 %s.2
  %3 = load float, float* %arrayidx97, align 4
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.2
  %arrayidx99 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx98, i32 0, i32 %s.2
  store float %3, float* %arrayidx99, align 4
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %inc101 = add nsw i32 %s.2, 1, !taffo.constinfo !27
  br label %for.cond92, !llvm.loop !92

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %inc104 = add nsw i32 %r.2, 1, !taffo.constinfo !27
  br label %for.cond88, !llvm.loop !93

for.end105:                                       ; preds = %for.cond88
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.equivalentChild !94 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ]
  %cmp3 = icmp slt i32 %j.0, %i.0
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0
  %0 = load float, float* %arrayidx5, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ]
  %w.0 = phi float [ %0, %for.body4 ], [ %sub, %for.inc ], !taffo.initweight !34, !taffo.info !95
  %cmp7 = icmp slt i32 %k.0, %j.0
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %k.0
  %1 = load float, float* %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.0
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0
  %2 = load float, float* %arrayidx12, align 4
  %mul = fmul float %1, %2
  %sub = fsub float %w.0, %mul, !taffo.initweight !46, !taffo.info !95
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond6, !llvm.loop !97

for.end:                                          ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.0
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.0
  %3 = load float, float* %arrayidx14, align 4
  %div = fdiv float %w.0, %3, !taffo.initweight !46, !taffo.info !95
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %j.0
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !56, !taffo.info !95
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond2, !llvm.loop !98

for.end19:                                        ; preds = %for.cond2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ]
  %cmp21 = icmp slt i32 %j.1, %n
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.1
  %4 = load float, float* %arrayidx24, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc35, %for.inc34 ]
  %w.1 = phi float [ %4, %for.body22 ], [ %sub33, %for.inc34 ], !taffo.initweight !34, !taffo.info !95
  %cmp26 = icmp slt i32 %k.1, %i.0
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %k.1
  %5 = load float, float* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.1
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %j.1
  %6 = load float, float* %arrayidx31, align 4
  %mul32 = fmul float %5, %6
  %sub33 = fsub float %w.1, %mul32, !taffo.initweight !46, !taffo.info !95
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %inc35 = add nsw i32 %k.1, 1, !taffo.constinfo !27
  br label %for.cond25, !llvm.loop !99

for.end36:                                        ; preds = %for.cond25
  %arrayidx37 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %j.1
  store float %w.1, float* %arrayidx38, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %inc40 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !100

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !101

for.end44:                                        ; preds = %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %i.1 = phi i32 [ 0, %for.end44 ], [ %inc62, %for.inc61 ]
  %cmp46 = icmp slt i32 %i.1, %n
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %arrayidx48 = getelementptr inbounds float, float* %b, i32 %i.1
  %7 = load float, float* %arrayidx48, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %j.2 = phi i32 [ 0, %for.body47 ], [ %inc58, %for.inc57 ]
  %w.2 = phi float [ %7, %for.body47 ], [ %sub56, %for.inc57 ], !taffo.initweight !34, !taffo.info !95
  %cmp50 = icmp slt i32 %j.2, %i.1
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %j.2
  %8 = load float, float* %arrayidx53, align 4
  %arrayidx54 = getelementptr inbounds float, float* %y, i32 %j.2
  %9 = load float, float* %arrayidx54, align 4
  %mul55 = fmul float %8, %9
  %sub56 = fsub float %w.2, %mul55, !taffo.initweight !46, !taffo.info !95
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %j.2, 1, !taffo.constinfo !27
  br label %for.cond49, !llvm.loop !102

for.end59:                                        ; preds = %for.cond49
  %arrayidx60 = getelementptr inbounds float, float* %y, i32 %i.1
  store float %w.2, float* %arrayidx60, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %inc62 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond45, !llvm.loop !103

for.end63:                                        ; preds = %for.cond45
  %sub64 = sub nsw i32 %n, 1, !taffo.constinfo !27
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %i.2 = phi i32 [ %sub64, %for.end63 ], [ %dec, %for.inc84 ]
  %cmp66 = icmp sge i32 %i.2, 0
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %arrayidx68 = getelementptr inbounds float, float* %y, i32 %i.2
  %10 = load float, float* %arrayidx68, align 4, !taffo.initweight !46, !taffo.info !95
  %add = add nsw i32 %i.2, 1, !taffo.constinfo !27
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %j.3 = phi i32 [ %add, %for.body67 ], [ %inc78, %for.inc77 ]
  %w.3 = phi float [ %10, %for.body67 ], [ %sub76, %for.inc77 ], !taffo.initweight !34, !taffo.info !95
  %cmp70 = icmp slt i32 %j.3, %n
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %j.3
  %11 = load float, float* %arrayidx73, align 4
  %arrayidx74 = getelementptr inbounds float, float* %x, i32 %j.3
  %12 = load float, float* %arrayidx74, align 4
  %mul75 = fmul float %11, %12
  %sub76 = fsub float %w.3, %mul75, !taffo.initweight !46, !taffo.info !95
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %j.3, 1, !taffo.constinfo !27
  br label %for.cond69, !llvm.loop !104

for.end79:                                        ; preds = %for.cond69
  %arrayidx80 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2
  %arrayidx81 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx80, i32 0, i32 %i.2
  %13 = load float, float* %arrayidx81, align 4
  %div82 = fdiv float %w.3, %13, !taffo.initweight !46, !taffo.info !95
  %arrayidx83 = getelementptr inbounds float, float* %x, i32 %i.2
  store float %div82, float* %arrayidx83, align 4, !taffo.initweight !56, !taffo.info !95
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %dec = add nsw i32 %i.2, -1, !taffo.constinfo !27
  br label %for.cond65, !llvm.loop !105

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, float* noundef %x) #0 !taffo.initweight !31 !taffo.funinfo !106 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 20, !taffo.info !70, !taffo.constinfo !27
  %cmp1 = icmp eq i32 %rem, 0, !taffo.info !81
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)), !taffo.constinfo !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.info !6
  %2 = load float, float* %arrayidx, align 4, !taffo.info !6
  %conv = fpext float %2 to double, !taffo.info !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), double noundef %conv), !taffo.constinfo !109
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  ret void
}

declare !taffo.initweight !31 !taffo.funinfo !32 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp.1(i32 noundef %n, [20 x float]* noundef %A, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !111 !taffo.funinfo !112 !taffo.sourceFunction !50 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42 ], !taffo.info !54
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !81
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc18, %for.inc17 ], !taffo.info !54
  %cmp3 = icmp slt i32 %j.0, %i.0, !taffo.info !70
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !74, !taffo.info !35
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !35
  %0 = load float, float* %arrayidx5, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ], !taffo.info !54
  %w.0 = phi float [ %0, %for.body4 ], [ %sub, %for.inc ], !taffo.initweight !34, !taffo.info !95
  %cmp7 = icmp slt i32 %k.0, %j.0, !taffo.info !70
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !74, !taffo.info !35
  %arrayidx10 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx9, i32 0, i32 %k.0, !taffo.initweight !78, !taffo.info !35
  %1 = load float, float* %arrayidx10, align 4, !taffo.initweight !113, !taffo.info !35
  %arrayidx11 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.0, !taffo.initweight !74, !taffo.info !35
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx11, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !35
  %2 = load float, float* %arrayidx12, align 4, !taffo.initweight !113, !taffo.info !35
  %mul = fmul float %1, %2, !taffo.initweight !114, !taffo.info !115
  %sub = fsub float %w.0, %mul, !taffo.initweight !46, !taffo.info !117
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond6, !llvm.loop !119

for.end:                                          ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %j.0, !taffo.initweight !74, !taffo.info !35
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx13, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !35
  %3 = load float, float* %arrayidx14, align 4, !taffo.initweight !113, !taffo.info !35
  %div = fdiv float %w.0, %3, !taffo.initweight !46, !taffo.info !120
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !74, !taffo.info !35
  %arrayidx16 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx15, i32 0, i32 %j.0, !taffo.initweight !78, !taffo.info !35
  store float %div, float* %arrayidx16, align 4, !taffo.initweight !56, !taffo.info !95
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %j.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond2, !llvm.loop !122

for.end19:                                        ; preds = %for.cond2
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end19
  %j.1 = phi i32 [ %i.0, %for.end19 ], [ %inc40, %for.inc39 ], !taffo.info !54
  %cmp21 = icmp slt i32 %j.1, %n, !taffo.info !81
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !74, !taffo.info !35
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx23, i32 0, i32 %j.1, !taffo.initweight !78, !taffo.info !35
  %4 = load float, float* %arrayidx24, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc34, %for.body22
  %k.1 = phi i32 [ 0, %for.body22 ], [ %inc35, %for.inc34 ], !taffo.info !54
  %w.1 = phi float [ %4, %for.body22 ], [ %sub33, %for.inc34 ], !taffo.initweight !34, !taffo.info !95
  %cmp26 = icmp slt i32 %k.1, %i.0, !taffo.info !70
  br i1 %cmp26, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond25
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !74, !taffo.info !35
  %arrayidx29 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %k.1, !taffo.initweight !78, !taffo.info !35
  %5 = load float, float* %arrayidx29, align 4, !taffo.initweight !113, !taffo.info !35
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %k.1, !taffo.initweight !74, !taffo.info !35
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx30, i32 0, i32 %j.1, !taffo.initweight !78, !taffo.info !35
  %6 = load float, float* %arrayidx31, align 4, !taffo.initweight !113, !taffo.info !35
  %mul32 = fmul float %5, %6, !taffo.initweight !114, !taffo.info !115
  %sub33 = fsub float %w.1, %mul32, !taffo.initweight !46, !taffo.info !117
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %inc35 = add nsw i32 %k.1, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond25, !llvm.loop !123

for.end36:                                        ; preds = %for.cond25
  %arrayidx37 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.initweight !74, !taffo.info !35
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx37, i32 0, i32 %j.1, !taffo.initweight !78, !taffo.info !35
  store float %w.1, float* %arrayidx38, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.inc39

for.inc39:                                        ; preds = %for.end36
  %inc40 = add nsw i32 %j.1, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !124

for.end41:                                        ; preds = %for.cond20
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !125

for.end44:                                        ; preds = %for.cond
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc61, %for.end44
  %i.1 = phi i32 [ 0, %for.end44 ], [ %inc62, %for.inc61 ], !taffo.info !54
  %cmp46 = icmp slt i32 %i.1, %n, !taffo.info !81
  br i1 %cmp46, label %for.body47, label %for.end63

for.body47:                                       ; preds = %for.cond45
  %arrayidx48 = getelementptr inbounds float, float* %b, i32 %i.1, !taffo.initweight !74, !taffo.info !39
  %7 = load float, float* %arrayidx48, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc57, %for.body47
  %j.2 = phi i32 [ 0, %for.body47 ], [ %inc58, %for.inc57 ], !taffo.info !54
  %w.2 = phi float [ %7, %for.body47 ], [ %sub56, %for.inc57 ], !taffo.initweight !34, !taffo.info !95
  %cmp50 = icmp slt i32 %j.2, %i.1, !taffo.info !70
  br i1 %cmp50, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond49
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !74, !taffo.info !35
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %j.2, !taffo.initweight !78, !taffo.info !35
  %8 = load float, float* %arrayidx53, align 4, !taffo.initweight !113, !taffo.info !35
  %arrayidx54 = getelementptr inbounds float, float* %y, i32 %j.2, !taffo.initweight !74, !taffo.info !43
  %9 = load float, float* %arrayidx54, align 4, !taffo.initweight !78, !taffo.info !43
  %mul55 = fmul float %8, %9, !taffo.initweight !113, !taffo.info !126
  %sub56 = fsub float %w.2, %mul55, !taffo.initweight !46, !taffo.info !128
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nsw i32 %j.2, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond49, !llvm.loop !130

for.end59:                                        ; preds = %for.cond49
  %arrayidx60 = getelementptr inbounds float, float* %y, i32 %i.1, !taffo.initweight !74, !taffo.info !43
  store float %w.2, float* %arrayidx60, align 4, !taffo.initweight !46, !taffo.info !95
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %inc62 = add nsw i32 %i.1, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond45, !llvm.loop !131

for.end63:                                        ; preds = %for.cond45
  %sub64 = sub nsw i32 %n, 1, !taffo.info !132, !taffo.constinfo !27
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc84, %for.end63
  %i.2 = phi i32 [ %sub64, %for.end63 ], [ %dec, %for.inc84 ], !taffo.info !134
  %cmp66 = icmp sge i32 %i.2, 0, !taffo.info !81
  br i1 %cmp66, label %for.body67, label %for.end85

for.body67:                                       ; preds = %for.cond65
  %arrayidx68 = getelementptr inbounds float, float* %y, i32 %i.2, !taffo.initweight !74, !taffo.info !43
  %10 = load float, float* %arrayidx68, align 4, !taffo.initweight !46, !taffo.info !95
  %add = add nsw i32 %i.2, 1, !taffo.info !107, !taffo.constinfo !27
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.body67
  %j.3 = phi i32 [ %add, %for.body67 ], [ %inc78, %for.inc77 ], !taffo.info !136
  %w.3 = phi float [ %10, %for.body67 ], [ %sub76, %for.inc77 ], !taffo.initweight !34, !taffo.info !95
  %cmp70 = icmp slt i32 %j.3, %n, !taffo.info !70
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2, !taffo.initweight !74, !taffo.info !35
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %j.3, !taffo.initweight !78, !taffo.info !35
  %11 = load float, float* %arrayidx73, align 4, !taffo.initweight !113, !taffo.info !35
  %arrayidx74 = getelementptr inbounds float, float* %x, i32 %j.3, !taffo.initweight !74, !taffo.info !41
  %12 = load float, float* %arrayidx74, align 4, !taffo.initweight !78, !taffo.info !41
  %mul75 = fmul float %11, %12, !taffo.initweight !113, !taffo.info !138
  %sub76 = fsub float %w.3, %mul75, !taffo.initweight !46, !taffo.info !140
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %j.3, 1, !taffo.info !142, !taffo.constinfo !27
  br label %for.cond69, !llvm.loop !144

for.end79:                                        ; preds = %for.cond69
  %arrayidx80 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.2, !taffo.initweight !74, !taffo.info !35
  %arrayidx81 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx80, i32 0, i32 %i.2, !taffo.initweight !78, !taffo.info !35
  %13 = load float, float* %arrayidx81, align 4, !taffo.initweight !113, !taffo.info !35
  %div82 = fdiv float %w.3, %13, !taffo.initweight !46, !taffo.info !120
  %arrayidx83 = getelementptr inbounds float, float* %x, i32 %i.2, !taffo.initweight !74, !taffo.info !41
  store float %div82, float* %arrayidx83, align 4, !taffo.initweight !56, !taffo.info !95
  br label %for.inc84

for.inc84:                                        ; preds = %for.end79
  %dec = add nsw i32 %i.2, -1, !taffo.info !145, !taffo.constinfo !27
  br label %for.cond65, !llvm.loop !147

for.end85:                                        ; preds = %for.cond65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A, [20 x float]* noundef %B, float* noundef %b, float* noundef %x, float* noundef %y) #0 !taffo.initweight !148 !taffo.funinfo !149 !taffo.sourceFunction !47 {
entry:
  %conv = sitofp i32 %n to float, !taffo.initweight !46, !taffo.info !150
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.initweight !34, !taffo.info !151
  %cmp = icmp slt i32 %i.0, %n, !taffo.initweight !46, !taffo.info !152
  br i1 %cmp, label %for.body, label %for.end, !taffo.initweight !56, !taffo.info !67

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds float, float* %x, i32 %i.0, !taffo.initweight !46, !taffo.info !153
  store float 0.000000e+00, float* %arrayidx, align 4, !taffo.initweight !56, !taffo.info !66, !taffo.constinfo !69
  %arrayidx5 = getelementptr inbounds float, float* %y, i32 %i.0, !taffo.initweight !46, !taffo.info !154
  store float 0.000000e+00, float* %arrayidx5, align 4, !taffo.initweight !56, !taffo.info !66, !taffo.constinfo !69
  %add = add nsw i32 %i.0, 1, !taffo.initweight !46, !taffo.info !155, !taffo.constinfo !27
  %conv6 = sitofp i32 %add to float, !taffo.initweight !56, !taffo.info !155
  %div = fdiv float %conv6, %conv, !taffo.initweight !46, !taffo.info !156
  %conv7 = fpext float %div to double, !taffo.initweight !56, !taffo.info !156
  %div8 = fdiv double %conv7, 2.000000e+00, !taffo.initweight !72, !taffo.info !158, !taffo.constinfo !73
  %add9 = fadd double %div8, 4.000000e+00, !taffo.initweight !74, !taffo.info !160, !taffo.constinfo !75
  %conv10 = fptrunc double %add9 to float, !taffo.initweight !78, !taffo.info !162
  %arrayidx11 = getelementptr inbounds float, float* %b, i32 %i.0, !taffo.initweight !46, !taffo.info !164
  store float %conv10, float* %arrayidx11, align 4, !taffo.initweight !56, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.initweight !46, !taffo.info !155, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !165

for.end:                                          ; preds = %for.cond
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc42, %for.inc41 ], !taffo.initweight !34, !taffo.info !151
  %cmp13 = icmp slt i32 %i.1, %n, !taffo.initweight !46, !taffo.info !152
  br i1 %cmp13, label %for.body15, label %for.end43, !taffo.initweight !56, !taffo.info !67

for.body15:                                       ; preds = %for.cond12
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %j.0 = phi i32 [ 0, %for.body15 ], [ %inc27, %for.inc26 ], !taffo.initweight !34, !taffo.info !151
  %cmp17 = icmp sle i32 %j.0, %i.1, !taffo.initweight !46, !taffo.info !152
  br i1 %cmp17, label %for.body19, label %for.end28, !taffo.initweight !56, !taffo.info !67

for.body19:                                       ; preds = %for.cond16
  %sub = sub nsw i32 0, %j.0, !taffo.initweight !46, !taffo.info !166, !taffo.constinfo !27
  %rem = srem i32 %sub, %n, !taffo.initweight !56, !taffo.info !168
  %conv20 = sitofp i32 %rem to float, !taffo.initweight !72, !taffo.info !168
  %conv21 = sitofp i32 %n to float, !taffo.info !107
  %div22 = fdiv float %conv20, %conv21, !taffo.initweight !74, !taffo.info !170
  %add23 = fadd float %div22, 1.000000e+00, !taffo.initweight !74, !taffo.info !172, !taffo.constinfo !80
  %arrayidx24 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !46, !taffo.info !174
  %arrayidx25 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx24, i32 0, i32 %j.0, !taffo.initweight !46, !taffo.info !174
  store float %add23, float* %arrayidx25, align 4, !taffo.initweight !56, !taffo.info !66
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nsw i32 %j.0, 1, !taffo.initweight !46, !taffo.info !155, !taffo.constinfo !27
  br label %for.cond16, !llvm.loop !175

for.end28:                                        ; preds = %for.cond16
  %add29 = add nsw i32 %i.1, 1, !taffo.initweight !46, !taffo.info !155, !taffo.constinfo !27
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end28
  %j.1 = phi i32 [ %add29, %for.end28 ], [ %inc37, %for.inc36 ], !taffo.initweight !34, !taffo.info !176
  %cmp31 = icmp slt i32 %j.1, %n, !taffo.initweight !46, !taffo.info !152
  br i1 %cmp31, label %for.body33, label %for.end38, !taffo.initweight !56, !taffo.info !67

for.body33:                                       ; preds = %for.cond30
  %arrayidx34 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !46, !taffo.info !174
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx34, i32 0, i32 %j.1, !taffo.initweight !46, !taffo.info !174
  store float 0.000000e+00, float* %arrayidx35, align 4, !taffo.initweight !56, !taffo.info !66, !taffo.constinfo !69
  br label %for.inc36

for.inc36:                                        ; preds = %for.body33
  %inc37 = add nsw i32 %j.1, 1, !taffo.initweight !46, !taffo.info !178, !taffo.constinfo !27
  br label %for.cond30, !llvm.loop !180

for.end38:                                        ; preds = %for.cond30
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.1, !taffo.initweight !46, !taffo.info !174
  %arrayidx40 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx39, i32 0, i32 %i.1, !taffo.initweight !46, !taffo.info !174
  store float 1.000000e+00, float* %arrayidx40, align 4, !taffo.initweight !56, !taffo.info !66, !taffo.constinfo !85
  br label %for.inc41

for.inc41:                                        ; preds = %for.end38
  %inc42 = add nsw i32 %i.1, 1, !taffo.initweight !46, !taffo.info !155, !taffo.constinfo !27
  br label %for.cond12, !llvm.loop !181

for.end43:                                        ; preds = %for.cond12
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc57, %for.end43
  %r.0 = phi i32 [ 0, %for.end43 ], [ %inc58, %for.inc57 ], !taffo.info !54
  %cmp45 = icmp slt i32 %r.0, %n, !taffo.info !81
  br i1 %cmp45, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond44
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body47
  %s.0 = phi i32 [ 0, %for.body47 ], [ %inc55, %for.inc54 ], !taffo.info !54
  %cmp49 = icmp slt i32 %s.0, %n, !taffo.info !81
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %arrayidx52 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.0, !taffo.initweight !74, !taffo.info !37
  %arrayidx53 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx52, i32 0, i32 %s.0, !taffo.initweight !78, !taffo.info !37
  store float 0.000000e+00, float* %arrayidx53, align 4, !taffo.initweight !74, !taffo.info !66, !taffo.constinfo !69
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %inc55 = add nsw i32 %s.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond48, !llvm.loop !182

for.end56:                                        ; preds = %for.cond48
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %r.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond44, !llvm.loop !183

for.end59:                                        ; preds = %for.cond44
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end59
  %t.0 = phi i32 [ 0, %for.end59 ], [ %inc86, %for.inc85 ], !taffo.info !54
  %cmp61 = icmp slt i32 %t.0, %n, !taffo.info !81
  br i1 %cmp61, label %for.body63, label %for.end87

for.body63:                                       ; preds = %for.cond60
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc82, %for.body63
  %r.1 = phi i32 [ 0, %for.body63 ], [ %inc83, %for.inc82 ], !taffo.info !54
  %cmp65 = icmp slt i32 %r.1, %n, !taffo.info !81
  br i1 %cmp65, label %for.body67, label %for.end84

for.body67:                                       ; preds = %for.cond64
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc79, %for.body67
  %s.1 = phi i32 [ 0, %for.body67 ], [ %inc80, %for.inc79 ], !taffo.info !54
  %cmp69 = icmp slt i32 %s.1, %n, !taffo.info !81
  br i1 %cmp69, label %for.body71, label %for.end81

for.body71:                                       ; preds = %for.cond68
  %arrayidx72 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.1, !taffo.initweight !74, !taffo.info !35
  %arrayidx73 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx72, i32 0, i32 %t.0, !taffo.initweight !78, !taffo.info !35
  %0 = load float, float* %arrayidx73, align 4, !taffo.initweight !113, !taffo.info !35
  %arrayidx74 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %s.1, !taffo.initweight !74, !taffo.info !35
  %arrayidx75 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx74, i32 0, i32 %t.0, !taffo.initweight !78, !taffo.info !35
  %1 = load float, float* %arrayidx75, align 4, !taffo.initweight !113, !taffo.info !35
  %mul = fmul float %0, %1, !taffo.initweight !114, !taffo.info !115
  %arrayidx76 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.1, !taffo.initweight !74, !taffo.info !37
  %arrayidx77 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx76, i32 0, i32 %s.1, !taffo.initweight !78, !taffo.info !37
  %2 = load float, float* %arrayidx77, align 4, !taffo.initweight !113, !taffo.info !37
  %add78 = fadd float %2, %mul, !taffo.initweight !114, !taffo.info !184
  store float %add78, float* %arrayidx77, align 4, !taffo.initweight !113, !taffo.info !37
  br label %for.inc79

for.inc79:                                        ; preds = %for.body71
  %inc80 = add nsw i32 %s.1, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond68, !llvm.loop !186

for.end81:                                        ; preds = %for.cond68
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %r.1, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond64, !llvm.loop !187

for.end84:                                        ; preds = %for.cond64
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %t.0, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond60, !llvm.loop !188

for.end87:                                        ; preds = %for.cond60
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc103, %for.end87
  %r.2 = phi i32 [ 0, %for.end87 ], [ %inc104, %for.inc103 ], !taffo.info !54
  %cmp89 = icmp slt i32 %r.2, %n, !taffo.info !81
  br i1 %cmp89, label %for.body91, label %for.end105

for.body91:                                       ; preds = %for.cond88
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.body91
  %s.2 = phi i32 [ 0, %for.body91 ], [ %inc101, %for.inc100 ], !taffo.info !54
  %cmp93 = icmp slt i32 %s.2, %n, !taffo.info !81
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %arrayidx96 = getelementptr inbounds [20 x float], [20 x float]* %B, i32 %r.2, !taffo.initweight !74, !taffo.info !37
  %arrayidx97 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx96, i32 0, i32 %s.2, !taffo.initweight !78, !taffo.info !37
  %3 = load float, float* %arrayidx97, align 4, !taffo.initweight !113, !taffo.info !37
  %arrayidx98 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %r.2, !taffo.initweight !74, !taffo.info !35
  %arrayidx99 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx98, i32 0, i32 %s.2, !taffo.initweight !78, !taffo.info !35
  store float %3, float* %arrayidx99, align 4, !taffo.initweight !113, !taffo.info !35
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %inc101 = add nsw i32 %s.2, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond92, !llvm.loop !189

for.end102:                                       ; preds = %for.cond92
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %inc104 = add nsw i32 %r.2, 1, !taffo.info !81, !taffo.constinfo !27
  br label %for.cond88, !llvm.loop !190

for.end105:                                       ; preds = %for.cond88
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.200000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double -3.794700e-02, double 0x400FFCF893FAF428}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.000000e+01}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.020000e+02}
!12 = !{i32 1, !"NumRegisterParameters", i32 0}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.4 (https://github.com/llvm/llvm-project.git 5c68a1cb123161b54b72ce90e7975d95a8eaf2a4)"}
!19 = !{i32 -1}
!20 = !{i32 0, i1 false}
!21 = !{i1 false, !22}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 1.000000e+01, double 1.000000e+01}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 2.000000e+00, double 2.000000e+00}
!27 = !{i1 false, i1 false}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{}
!31 = !{i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false}
!33 = !{i1 true}
!34 = !{i32 0}
!35 = !{i1 false, !36, i1 false, i2 -1}
!36 = !{double 1.000000e-01, double 8.172500e+00}
!37 = !{i1 false, !38, i1 false, i2 -1}
!38 = !{double 1.000000e+00, double 8.172500e+00}
!39 = !{i1 false, !40, i1 false, i2 -1}
!40 = !{double 4.025000e+00, double 4.500000e+00}
!41 = !{i1 false, !7, i1 false, i2 -1}
!42 = !{!"x"}
!43 = !{i1 false, !44, i1 false, i2 -1}
!44 = !{double 0.000000e+00, double 4.025000e+00}
!45 = !{i32 1}
!46 = !{i32 2}
!47 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array}
!48 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!49 = !{i1 false}
!50 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp}
!51 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 2.100000e+01}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 1.000000e+00}
!56 = !{i32 3}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 1.000000e+00, double 2.100000e+01}
!59 = distinct !{!59, !29}
!60 = !{i1 false, i1 false, i1 false}
!61 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!62 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!63 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!64 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!65 = !{void (i32, [20 x float]*, [20 x float]*, float*, float*, float*)* @init_array.2}
!66 = !{i1 false, i1 false, i1 false, i2 1}
!67 = !{i1 false, !68, i1 false, i2 1}
!68 = !{double 0.000000e+00, double 2.000000e+01}
!69 = !{!70, i1 false}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 0.000000e+00}
!72 = !{i32 4}
!73 = !{i1 false, !25}
!74 = !{i32 5}
!75 = !{i1 false, !76}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 4.000000e+00, double 4.000000e+00}
!78 = !{i32 6}
!79 = distinct !{!79, !29}
!80 = !{i1 false, !81}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 1.000000e+00}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = !{!81, i1 false}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = !{void (i32, [20 x float]*, float*, float*, float*)* @kernel_ludcmp.1}
!95 = !{i1 false, !96, i1 false, i2 -1}
!96 = !{double -2.000000e+02, double 2.000000e+02}
!97 = distinct !{!97, !29}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, !29}
!102 = distinct !{!102, !29}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}
!105 = distinct !{!105, !29}
!106 = !{i32 1, !107, i32 1, !6}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 2.000000e+01, double 2.000000e+01}
!109 = !{i1 false, i1 false, i1 false, i1 false}
!110 = distinct !{!110, !29}
!111 = !{i32 -1, i32 2, i32 2, i32 2, i32 2}
!112 = !{i32 1, !107, i32 1, !35, i32 1, !39, i32 1, !41, i32 1, !43}
!113 = !{i32 7}
!114 = !{i32 8}
!115 = !{i1 false, !116, i1 false, i2 -1}
!116 = !{double 0x3F847AE147AE147C, double 0x4050B28B5DCC63F1}
!117 = !{i1 false, !118, i1 false, i2 -1}
!118 = !{double 0xC070ACA2D77318FC, double 1.999900e+02}
!119 = distinct !{!119, !29}
!120 = !{i1 false, !121, i1 false, i2 -1}
!121 = !{double -2.000000e+03, double 2.000000e+03}
!122 = distinct !{!122, !29}
!123 = distinct !{!123, !29}
!124 = distinct !{!124, !29}
!125 = distinct !{!125, !29}
!126 = !{i1 false, !127, i1 false, i2 -1}
!127 = !{double 0.000000e+00, double 0x40407278D4FDF3B6}
!128 = !{i1 false, !129, i1 false, i2 -1}
!129 = !{double 0xC06D1C9E353F7CEE, double 2.000000e+02}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = !{i1 false, !133, i1 false, i2 0}
!133 = !{double 1.900000e+01, double 1.900000e+01}
!134 = !{i1 false, !135, i1 false, i2 0}
!135 = !{double 1.800000e+01, double 1.900000e+01}
!136 = !{i1 false, !137, i1 false, i2 0}
!137 = !{double 2.000000e+01, double 2.100000e+01}
!138 = !{i1 false, !139, i1 false, i2 -1}
!139 = !{double 0xBFD3D90958EF2F78, double 0x404056C5D9587664}
!140 = !{i1 false, !141, i1 false, i2 -1}
!141 = !{double 0xC06D15B176561D99, double 0x406909EC84AC7798}
!142 = !{i1 false, !143, i1 false, i2 0}
!143 = !{double 2.100000e+01, double 2.100000e+01}
!144 = distinct !{!144, !29}
!145 = !{i1 false, !146, i1 false, i2 0}
!146 = !{double 1.800000e+01, double 1.800000e+01}
!147 = distinct !{!147, !29}
!148 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 2}
!149 = !{i32 1, !107, i32 1, !35, i32 1, !37, i32 1, !39, i32 1, !41, i32 1, !43}
!150 = !{i1 false, !108, i1 false, i2 1}
!151 = !{i1 false, !53, i1 false, i2 1}
!152 = !{i1 false, !55, i1 false, i2 1}
!153 = !{i1 false, !7, i1 false, i2 1}
!154 = !{i1 false, !44, i1 false, i2 1}
!155 = !{i1 false, !58, i1 false, i2 1}
!156 = !{i1 false, !157, i1 false, i2 1}
!157 = !{double 5.000000e-02, double 1.050000e+00}
!158 = !{i1 false, !159, i1 false, i2 1}
!159 = !{double 2.500000e-02, double 5.250000e-01}
!160 = !{i1 false, !161, i1 false, i2 1}
!161 = !{double 4.025000e+00, double 4.525000e+00}
!162 = !{i1 false, !163, i1 false, i2 1}
!163 = !{double 0x4010199980000000, double 0x40121999A0000000}
!164 = !{i1 false, !40, i1 false, i2 1}
!165 = distinct !{!165, !29}
!166 = !{i1 false, !167, i1 false, i2 1}
!167 = !{double -2.000000e+01, double 0.000000e+00}
!168 = !{i1 false, !169, i1 false, i2 1}
!169 = !{double -1.900000e+01, double 0.000000e+00}
!170 = !{i1 false, !171, i1 false, i2 1}
!171 = !{double 0xBFEE666666666666, double 0.000000e+00}
!172 = !{i1 false, !173, i1 false, i2 1}
!173 = !{double 0x3FA99999999999A0, double 1.000000e+00}
!174 = !{i1 false, !36, i1 false, i2 1}
!175 = distinct !{!175, !29}
!176 = !{i1 false, !177, i1 false, i2 1}
!177 = !{double 0.000000e+00, double 2.200000e+01}
!178 = !{i1 false, !179, i1 false, i2 1}
!179 = !{double 1.000000e+00, double 2.200000e+01}
!180 = distinct !{!180, !29}
!181 = distinct !{!181, !29}
!182 = distinct !{!182, !29}
!183 = distinct !{!183, !29}
!184 = !{i1 false, !185, i1 false, i2 -1}
!185 = !{double 1.010000e+00, double 0x4052BD959B3D07C8}
!186 = distinct !{!186, !29}
!187 = distinct !{!187, !29}
!188 = distinct !{!188, !29}
!189 = distinct !{!189, !29}
!190 = distinct !{!190, !29}
