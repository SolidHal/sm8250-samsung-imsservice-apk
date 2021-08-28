.class public final enum Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;
.super Ljava/lang/Enum;
.source "CallLogQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallLogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

.field public static final enum LOG_TYPE_CALL:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

.field public static final enum LOG_TYPE_VIDEO:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    const-string v1, "LOG_TYPE_CALL"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;->LOG_TYPE_CALL:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    .line 56
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    const-string v1, "LOG_TYPE_VIDEO"

    const/4 v3, 0x1

    const/16 v4, 0x1f4

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;->LOG_TYPE_VIDEO:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    .line 53
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    sget-object v4, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;->LOG_TYPE_CALL:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;->$VALUES:[Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;->mId:I

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;
    .locals 1

    .line 53
    sget-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;->$VALUES:[Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallLogType;->mId:I

    return v0
.end method
