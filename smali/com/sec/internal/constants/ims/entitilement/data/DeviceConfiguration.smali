.class public Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration$RAT;,
        Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration$ConfigInfo;
    }
.end annotation


# instance fields
.field public mConfigInfo:Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration$ConfigInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "configInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
