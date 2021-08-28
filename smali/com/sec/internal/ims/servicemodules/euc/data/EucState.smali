.class public final enum Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
.super Ljava/lang/Enum;
.source "EucState.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum DISMISSED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field public static final enum TIMED_OUT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 23
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "ACCEPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 28
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "REJECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 33
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "ACCEPTED_NOT_SENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 38
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "REJECTED_NOT_SENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 43
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "DISMISSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->DISMISSED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 48
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "TIMED_OUT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->TIMED_OUT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 53
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "FAILED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 59
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const-string v1, "NONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 17
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v10, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v10, v1, v2

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->DISMISSED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->TIMED_OUT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    .line 63
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->id:I

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .locals 1

    .line 17
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->$VALUES:[Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .locals 2
    .param p1, "id"    # I

    .line 77
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    return-object v0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getFromId(I)Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->id:I

    return v0
.end method
