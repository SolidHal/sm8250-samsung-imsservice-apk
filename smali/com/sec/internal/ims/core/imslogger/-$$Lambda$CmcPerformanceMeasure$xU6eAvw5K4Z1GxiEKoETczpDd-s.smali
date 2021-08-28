.class public final synthetic Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$xU6eAvw5K4Z1GxiEKoETczpDd-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$xU6eAvw5K4Z1GxiEKoETczpDd-s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$xU6eAvw5K4Z1GxiEKoETczpDd-s;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$xU6eAvw5K4Z1GxiEKoETczpDd-s;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$xU6eAvw5K4Z1GxiEKoETczpDd-s;->INSTANCE:Lcom/sec/internal/ims/core/imslogger/-$$Lambda$CmcPerformanceMeasure$xU6eAvw5K4Z1GxiEKoETczpDd-s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNtpTimeOffsetChanged(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/imslogger/CmcPerformanceMeasure;->lambda$static$0(J)V

    return-void
.end method
