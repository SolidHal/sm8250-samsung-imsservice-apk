.class public final Lcom/sec/internal/constants/ims/entitilement/DeviceEventType$Main;
.super Ljava/lang/Object;
.source "DeviceEventType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/DeviceEventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Main"
.end annotation


# static fields
.field public static final ENTITLEMENT_CHECK_COMPLETED:I = 0x3

.field public static final LOC_AND_TC_UPDATED:I = 0x2

.field public static final LOC_AND_TC_WEBSHEET_COMPLETED:I = 0x5

.field public static final LOC_AND_TC_WEBSHEET_LAUNCHED:I = 0x4

.field public static final SIM_DEVICE_ACTIVATED:I = 0x0

.field public static final SIM_DEVICE_DEACTIVATED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
