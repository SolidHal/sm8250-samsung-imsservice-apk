.class public Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration$ConfigInfo;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigInfo"
.end annotation


# instance fields
.field public mVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;

    .line 14
    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration$ConfigInfo;->this$0:Lcom/sec/internal/constants/ims/entitilement/data/DeviceConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
