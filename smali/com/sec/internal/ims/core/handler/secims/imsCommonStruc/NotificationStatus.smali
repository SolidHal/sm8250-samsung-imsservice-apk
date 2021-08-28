.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/NotificationStatus;
.super Ljava/lang/Object;
.source "NotificationStatus.java"


# static fields
.field public static final NOTIFICATION_DELIVERED:I = 0x0

.field public static final NOTIFICATION_DISPLAYED:I = 0x1

.field public static final NOTIFICATION_INTERWORKING_MMS:I = 0x3

.field public static final NOTIFICATION_INTERWORKING_SMS:I = 0x2

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "NOTIFICATION_DELIVERED"

    const-string v1, "NOTIFICATION_DISPLAYED"

    const-string v2, "NOTIFICATION_INTERWORKING_SMS"

    const-string v3, "NOTIFICATION_INTERWORKING_MMS"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/NotificationStatus;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # I

    .line 14
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/NotificationStatus;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
