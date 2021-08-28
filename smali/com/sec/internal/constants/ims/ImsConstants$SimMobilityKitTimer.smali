.class public Lcom/sec/internal/constants/ims/ImsConstants$SimMobilityKitTimer;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimMobilityKitTimer"
.end annotation


# static fields
.field public static final BASIC_INTERVAL:J = 0x240c8400L

.field public static final RETRY_INTERVAL:Ljava/lang/String; = "com.samsung.ims.smk.retry_interval"

.field public static final START_TIMER:Ljava/lang/String; = "com.samsung.ims.smk.smk_timer_start"

.field public static final TIMER_EXIST:Ljava/lang/String; = "smk_timer_exist"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
