.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CallReason;
.super Ljava/lang/Object;
.source "CallReason.java"


# static fields
.field public static final CALL_FAILURE:I = 0x1

.field public static final CALL_SUCCESS:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-string v0, "CALL_SUCCESS"

    const-string v1, "CALL_FAILURE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CallReason;->names:[Ljava/lang/String;

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

    .line 12
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CallReason;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
