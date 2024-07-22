; ModuleID = './build/bin/fixed/seidel-2d/8/seidel-2d-standard-1-fixed-8.out.ll.3.taffotmp.ll'
source_filename = "./sources/seidel-2d.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@A_float = dso_local global [20 x [20 x float]] zeroinitializer, align 4, !taffo.info !0
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
define dso_local void @timer_start() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_stop() #0 !taffo.initweight !24 !taffo.funinfo !24 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !25 !taffo.funinfo !26 !taffo.start !27 {
entry:
  %A = alloca [20 x [20 x float]], align 4, !taffo.info !28, !taffo.initweight !31, !taffo.target !32
  %A1 = bitcast [20 x [20 x float]]* %A to i8*, !taffo.info !33, !taffo.initweight !34, !taffo.target !32
  %arraydecay = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !34, !taffo.target !32
  call void @init_array.2(i32 noundef 20, [20 x float]* noundef %arraydecay), !taffo.info !35, !taffo.initweight !36, !taffo.constinfo !37, !taffo.target !32, !taffo.originalCall !38
  call void @timer_start(), !taffo.constinfo !39
  %arraydecay2 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 0, !taffo.info !28, !taffo.initweight !34, !taffo.target !32
  call void @kernel_seidel_2d.1(i32 noundef 10, i32 noundef 20, [20 x float]* noundef %arraydecay2), !taffo.info !35, !taffo.initweight !36, !taffo.constinfo !40, !taffo.target !32, !taffo.originalCall !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ], !taffo.info !42
  %cmp = icmp slt i32 %i.0, 20, !taffo.info !44
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !46
  %cmp4 = icmp slt i32 %j.0, 20, !taffo.info !44
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %arrayidx = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* %A, i32 0, i32 %i.0, !taffo.info !28, !taffo.initweight !34, !taffo.target !32
  %arrayidx6 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !36, !taffo.target !32
  %0 = load float, float* %arrayidx6, align 4, !taffo.info !28, !taffo.initweight !48, !taffo.target !32
  %arrayidx7 = getelementptr inbounds [20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 %i.0, !taffo.info !0
  %arrayidx8 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx7, i32 0, i32 %j.0, !taffo.info !0
  store float %0, float* %arrayidx8, align 4, !taffo.info !35, !taffo.initweight !49, !taffo.target !32
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !50, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !52

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !taffo.info !53, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !55

for.end11:                                        ; preds = %for.cond
  call void @print_array(i32 noundef 20, [20 x float]* noundef getelementptr inbounds ([20 x [20 x float]], [20 x [20 x float]]* @A_float, i32 0, i32 0)), !taffo.constinfo !37
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !25 !taffo.funinfo !56 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ], !taffo.info !44
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !59
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !44
  %cmp2 = icmp slt i32 %j.0, %n, !taffo.info !59
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, %n, !taffo.info !61
  %add = add nsw i32 %mul, %j.0, !taffo.info !61
  %rem = srem i32 %add, 20, !taffo.info !61, !taffo.constinfo !21
  %cmp4 = icmp eq i32 %rem, 0, !taffo.info !59
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !taffo.constinfo !37
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 4
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !0
  %arrayidx5 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !0
  %2 = load float, float* %arrayidx5, align 4, !taffo.info !0
  %conv = fpext float %2 to double, !taffo.info !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), double noundef %conv), !taffo.constinfo !40
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !63

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !64

for.end9:                                         ; preds = %for.cond
  ret void
}

declare !taffo.initweight !25 !taffo.funinfo !26 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_seidel_2d.1(i32 noundef %tsteps, i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !65 !taffo.funinfo !66 !taffo.sourceFunction !41 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc56, %for.inc55 ], !taffo.info !44
  %sub = sub nsw i32 %tsteps, 1, !taffo.info !67, !taffo.constinfo !21
  %cmp = icmp sle i32 %t.0, %sub, !taffo.info !59
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc52, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc53, %for.inc52 ], !taffo.info !69
  %sub2 = sub nsw i32 %n, 2, !taffo.info !71, !taffo.constinfo !21
  %cmp3 = icmp sle i32 %i.0, %sub2, !taffo.info !59
  br i1 %cmp3, label %for.body4, label %for.end54

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 1, %for.body4 ], [ %inc, %for.inc ], !taffo.info !69
  %sub6 = sub nsw i32 %n, 2, !taffo.info !71, !taffo.constinfo !21
  %cmp7 = icmp sle i32 %j.0, %sub6, !taffo.info !59
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %sub10 = sub nsw i32 %i.0, 1, !taffo.info !61, !taffo.constinfo !21
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub10, !taffo.info !28, !taffo.initweight !73
  %sub11 = sub nsw i32 %j.0, 1, !taffo.info !61, !taffo.constinfo !21
  %arrayidx12 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %sub11, !taffo.info !28, !taffo.initweight !74
  %0 = load float, float* %arrayidx12, align 4, !taffo.info !75, !taffo.initweight !77
  %sub13 = sub nsw i32 %i.0, 1, !taffo.info !61, !taffo.constinfo !21
  %arrayidx14 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub13, !taffo.info !28, !taffo.initweight !73
  %arrayidx15 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx14, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !74
  %1 = load float, float* %arrayidx15, align 4, !taffo.info !75, !taffo.initweight !77
  %add = fadd float %0, %1, !taffo.info !78, !taffo.initweight !80
  %sub16 = sub nsw i32 %i.0, 1, !taffo.info !61, !taffo.constinfo !21
  %arrayidx17 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %sub16, !taffo.info !28, !taffo.initweight !73
  %add18 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx19 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx17, i32 0, i32 %add18, !taffo.info !28, !taffo.initweight !74
  %2 = load float, float* %arrayidx19, align 4, !taffo.info !75, !taffo.initweight !77
  %add20 = fadd float %add, %2, !taffo.info !81, !taffo.initweight !80
  %arrayidx21 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !73
  %sub22 = sub nsw i32 %j.0, 1, !taffo.info !61, !taffo.constinfo !21
  %arrayidx23 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx21, i32 0, i32 %sub22, !taffo.info !28, !taffo.initweight !74
  %3 = load float, float* %arrayidx23, align 4, !taffo.info !84, !taffo.initweight !77
  %add24 = fadd float %add20, %3, !taffo.info !85, !taffo.initweight !36
  %arrayidx26 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !73
  %arrayidx27 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx26, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !74
  %4 = load float, float* %arrayidx27, align 4, !taffo.info !75, !taffo.initweight !77
  %arrayidx28 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !73
  %add29 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx30 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx28, i32 0, i32 %add29, !taffo.info !28, !taffo.initweight !74
  %5 = load float, float* %arrayidx30, align 4, !taffo.info !75, !taffo.initweight !77
  %add31 = fadd float %4, %5, !taffo.info !78, !taffo.initweight !80
  %add32 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add32, !taffo.info !28, !taffo.initweight !73
  %sub34 = sub nsw i32 %j.0, 1, !taffo.info !61, !taffo.constinfo !21
  %arrayidx35 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx33, i32 0, i32 %sub34, !taffo.info !28, !taffo.initweight !74
  %6 = load float, float* %arrayidx35, align 4, !taffo.info !75, !taffo.initweight !77
  %add36 = fadd float %add31, %6, !taffo.info !81, !taffo.initweight !80
  %add37 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx38 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add37, !taffo.info !28, !taffo.initweight !73
  %arrayidx39 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx38, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !74
  %7 = load float, float* %arrayidx39, align 4, !taffo.info !84, !taffo.initweight !77
  %add40 = fadd float %add36, %7, !taffo.info !88, !taffo.initweight !80
  %add41 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx42 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %add41, !taffo.info !28, !taffo.initweight !73
  %add43 = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  %arrayidx44 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx42, i32 0, i32 %add43, !taffo.info !28, !taffo.initweight !74
  %8 = load float, float* %arrayidx44, align 4, !taffo.info !84, !taffo.initweight !77
  %add45 = fadd float %add40, %8, !taffo.info !89, !taffo.initweight !36
  %add47 = fadd float %add24, %add45, !taffo.info !91, !taffo.initweight !36
  %div49 = fdiv float %add47, 9.000000e+00, !taffo.info !93, !taffo.initweight !36, !taffo.constinfo !94
  %arrayidx50 = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !28, !taffo.initweight !73
  %arrayidx51 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx50, i32 0, i32 %j.0, !taffo.info !28, !taffo.initweight !74
  store float %div49, float* %arrayidx51, align 4, !taffo.info !95, !taffo.initweight !36
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond5, !llvm.loop !96

for.end:                                          ; preds = %for.cond5
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %inc53 = add nsw i32 %i.0, 1, !taffo.info !19, !taffo.constinfo !21
  br label %for.cond1, !llvm.loop !97

for.end54:                                        ; preds = %for.cond1
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %inc56 = add nsw i32 %t.0, 1, !taffo.info !59, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !98

for.end57:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array.2(i32 noundef %n, [20 x float]* noundef %A) #0 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !38 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !101, !taffo.initweight !31
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !103, !taffo.initweight !36
  br i1 %cmp, label %for.body, label %for.end12, !taffo.info !101, !taffo.initweight !48

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !101, !taffo.initweight !31
  %cmp4 = icmp slt i32 %j.0, %n, !taffo.info !103, !taffo.initweight !36
  br i1 %cmp4, label %for.body5, label %for.end, !taffo.info !101, !taffo.initweight !48

for.body5:                                        ; preds = %for.cond3
  %conv = sitofp i32 %i.0 to float, !taffo.info !104, !taffo.initweight !36
  %add = add nsw i32 %j.0, 2, !taffo.info !106, !taffo.initweight !36, !taffo.constinfo !21
  %conv6 = sitofp i32 %add to float, !taffo.info !108, !taffo.initweight !48
  %mul = fmul float %conv, %conv6, !taffo.info !109, !taffo.initweight !48
  %add7 = fadd float %mul, 2.000000e+00, !taffo.info !112, !taffo.initweight !49, !taffo.constinfo !114
  %conv8 = sitofp i32 %n to float, !taffo.info !115
  %div = fdiv float %add7, %conv8, !taffo.info !116, !taffo.initweight !73
  %arrayidx = getelementptr inbounds [20 x float], [20 x float]* %A, i32 %i.0, !taffo.info !93, !taffo.initweight !36
  %arrayidx9 = getelementptr inbounds [20 x float], [20 x float]* %arrayidx, i32 0, i32 %j.0, !taffo.info !93, !taffo.initweight !36
  store float %div, float* %arrayidx9, align 4, !taffo.info !95, !taffo.initweight !48
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !118, !taffo.initweight !36, !taffo.constinfo !21
  br label %for.cond3, !llvm.loop !120

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !118, !taffo.initweight !36, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !121

for.end12:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 0x40340CCCBC05D52C}
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
!24 = !{}
!25 = !{i32 -1, i32 -1}
!26 = !{i32 0, i1 false, i32 0, i1 false}
!27 = !{i1 true}
!28 = !{!29, !30, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 27}
!30 = !{double 1.000000e-01, double 0x40340CCCBC05D52C}
!31 = !{i32 0}
!32 = !{!"A"}
!33 = !{!29, i1 false, i1 false, i2 -1}
!34 = !{i32 1}
!35 = !{i1 false, !30, i1 false, i2 -1}
!36 = !{i32 2}
!37 = !{i1 false, i1 false, i1 false}
!38 = distinct !{null}
!39 = !{i1 false}
!40 = !{i1 false, i1 false, i1 false, i1 false}
!41 = distinct !{null}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 2.100000e+01}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 0.000000e+00, double 1.000000e+00}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 4.410000e+02}
!48 = !{i32 3}
!49 = !{i32 4}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 1.000000e+00, double 4.410000e+02}
!52 = distinct !{!52, !23}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 1.000000e+00, double 2.100000e+01}
!55 = distinct !{!55, !23}
!56 = !{i32 1, !57, i32 1, !0}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 2.000000e+01, double 2.000000e+01}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 1.000000e+00}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 0.000000e+00}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = !{i32 -1, i32 -1, i32 2}
!66 = !{i32 1, !16, i32 1, !57, i32 1, !28}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 9.000000e+00, double 9.000000e+00}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 2.000000e+00}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.800000e+01, double 1.800000e+01}
!73 = !{i32 5}
!74 = !{i32 6}
!75 = !{!76, !30, i1 false, i2 -1}
!76 = !{!"fixp", i32 32, i32 26}
!77 = !{i32 7}
!78 = !{!76, !79, i1 false, i2 -1}
!79 = !{double 2.000000e-01, double 0x40440CCCBC05D52C}
!80 = !{i32 8}
!81 = !{!82, !83, i1 false, i2 -1}
!82 = !{!"fixp", i32 32, i32 25}
!83 = !{double 0x3FD3333333333334, double 0x404E13331A08BFC2}
!84 = !{!82, !30, i1 false, i2 -1}
!85 = !{!86, !87, i1 false, i2 1}
!86 = !{!"fixp", i32 32, i32 24}
!87 = !{double 4.000000e-01, double 0x40540CCCBC05D52C}
!88 = !{!82, !87, i1 false, i2 -1}
!89 = !{!86, !90, i1 false, i2 1}
!90 = !{double 5.000000e-01, double 0x40590FFFEB074A77}
!91 = !{!86, !92, i1 false, i2 1}
!92 = !{double 9.000000e-01, double 0x40668E6653868FD2}
!93 = !{!29, !30, i1 false, i2 1}
!94 = !{i1 false, !67}
!95 = !{i1 false, i1 false, i1 false, i2 1}
!96 = distinct !{!96, !23}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = !{i32 -1, i32 2}
!100 = !{i32 1, !57, i32 1, !28}
!101 = !{i1 false, !102, i1 false, i2 -1}
!102 = !{double -2.000000e+01, double 2.000000e+01}
!103 = !{i1 false, !45, i1 false, i2 -1}
!104 = !{!105, !102, i1 false, i2 -1}
!105 = !{!"fixp", i32 -32, i32 26}
!106 = !{i1 false, !107, i1 false, i2 -1}
!107 = !{double -1.800000e+01, double 2.200000e+01}
!108 = !{!105, !107, i1 false, i2 -1}
!109 = !{!110, !111, i1 false, i2 -1}
!110 = !{!"fixp", i32 -32, i32 22}
!111 = !{double -4.400000e+02, double 4.400000e+02}
!112 = !{!110, !113, i1 false, i2 -1}
!113 = !{double -4.380000e+02, double 4.420000e+02}
!114 = !{i1 false, !19}
!115 = !{!105, !58, i1 false, i2 1}
!116 = !{!105, !117, i1 false, i2 -1}
!117 = !{double -2.190000e+01, double 2.210000e+01}
!118 = !{i1 false, !119, i1 false, i2 -1}
!119 = !{double -1.900000e+01, double 2.100000e+01}
!120 = distinct !{!120, !23}
!121 = distinct !{!121, !23}
