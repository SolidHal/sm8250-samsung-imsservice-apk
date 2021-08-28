.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RCSConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc;
    }
.end annotation


# instance fields
.field public mWapProvisioningDoc:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/deviceconfig/DeviceConfig$RCSConfig$WapProvisioningDoc;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wap-provisioningdoc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
