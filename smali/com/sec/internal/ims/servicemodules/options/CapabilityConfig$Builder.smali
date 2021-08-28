.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;
.super Ljava/lang/Object;
.source "CapabilityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field capCacheExpiry:I

.field capInfoExpiry:I

.field defaultDisc:I

.field isAvailable:Z

.field isLastseenAvailable:Z

.field pollingPeriod:I

.field pollingRate:I

.field pollingRatePeriod:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->capInfoExpiry:I

    .line 450
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->capCacheExpiry:I

    .line 451
    const/16 v1, 0x78

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingPeriod:I

    .line 452
    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingRate:I

    .line 453
    const-wide/16 v1, 0xa

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingRatePeriod:J

    .line 454
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->defaultDisc:I

    .line 455
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->isAvailable:Z

    .line 456
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->isLastseenAvailable:Z

    return-void
.end method
