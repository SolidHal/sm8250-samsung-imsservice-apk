.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;,
        Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;,
        Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;
    }
.end annotation


# instance fields
.field public mFaxConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$FaxConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "faxConfig"
    .end annotation
.end field

.field public mJanskyConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$JanskyConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "janskyConfig"
    .end annotation
.end field

.field public mRCSConfig:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RCSConfig"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
