.class public Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$SimStatusValue;
.super Ljava/lang/Object;
.source "CloudMessageProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimStatusValue"
.end annotation


# static fields
.field public static final SIM_READY:Ljava/lang/String; = "SimReady"

.field public static final SIM_REMOVED:Ljava/lang/String; = "SimRemoved"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
