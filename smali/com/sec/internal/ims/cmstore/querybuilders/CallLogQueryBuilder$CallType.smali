.class public final enum Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;
.super Ljava/lang/Enum;
.source "CallLogQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

.field public static final enum ANSWERED_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

.field public static final enum INCOMING_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

.field public static final enum MISSED_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

.field public static final enum OUTGOING_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    const-string v1, "INCOMING_TYPE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->INCOMING_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    .line 25
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    const-string v1, "OUTGOING_TYPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->OUTGOING_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    .line 26
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    const-string v1, "MISSED_TYPE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->MISSED_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    .line 27
    new-instance v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    const-string v1, "ANSWERED_TYPE"

    const/16 v6, 0x10

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->ANSWERED_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    .line 23
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    sget-object v6, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->INCOMING_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->OUTGOING_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->MISSED_TYPE:Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->$VALUES:[Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->mId:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;
    .locals 1

    .line 23
    sget-object v0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->$VALUES:[Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/CallLogQueryBuilder$CallType;->mId:I

    return v0
.end method
