.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CshRejectReason;
.super Ljava/lang/Object;
.source "CshRejectReason.java"


# static fields
.field public static final BUSY:I = 0x2

.field public static final DEVICE_FAILED:I = 0x3

.field public static final NO_ANSWER:I = 0x1

.field public static final USER:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "USER"

    const-string v1, "NO_ANSWER"

    const-string v2, "BUSY"

    const-string v3, "DEVICE_FAILED"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CshRejectReason;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CshRejectReason;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
