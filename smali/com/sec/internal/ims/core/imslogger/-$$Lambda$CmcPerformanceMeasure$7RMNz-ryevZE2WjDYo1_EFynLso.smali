.class public final synthetic Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$7RMNz-ryevZE2WjDYo1_EFynLso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$7RMNz-ryevZE2WjDYo1_EFynLso;->f$0:Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;

    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$7RMNz-ryevZE2WjDYo1_EFynLso;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$7RMNz-ryevZE2WjDYo1_EFynLso;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$7RMNz-ryevZE2WjDYo1_EFynLso;->f$0:Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;

    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$7RMNz-ryevZE2WjDYo1_EFynLso;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$7RMNz-ryevZE2WjDYo1_EFynLso;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->lambda$send$1$CmcPerformanceMeasure(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method
