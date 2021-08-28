.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse_/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final FAILURE_INTERNAL:I = 0x1

.field public static final FAILURE_NETWORK:I = 0x2

.field public static final SUCCESS:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const-string v0, "SUCCESS"

    const-string v1, "FAILURE_INTERNAL"

    const-string v2, "FAILURE_NETWORK"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse_/Status;->names:[Ljava/lang/String;

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

    .line 13
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse_/Status;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
