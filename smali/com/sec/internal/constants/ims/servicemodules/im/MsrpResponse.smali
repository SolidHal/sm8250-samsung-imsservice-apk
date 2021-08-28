.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
.super Ljava/lang/Enum;
.source "MsrpResponse.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_200_SUCCESSFUL_TRANSACTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_400_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_403_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_408_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_413_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_415_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_423_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_481_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_501_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_503_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_506_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field public static final enum MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_200_SUCCESSFUL_TRANSACTION"

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_200_SUCCESSFUL_TRANSACTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 5
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_400_REQUEST_UNINTELLIGIBLE"

    const/4 v3, 0x1

    const/16 v4, 0x190

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_400_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 6
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_403_ACTION_NOT_ALLOWED"

    const/4 v4, 0x2

    const/16 v5, 0x193

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_403_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 7
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_408_TRANSACTION_TIMED_OUT"

    const/4 v5, 0x3

    const/16 v6, 0x198

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_408_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_413_DO_NOT_SEND_THIS_MESSAGE"

    const/4 v6, 0x4

    const/16 v7, 0x19d

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_413_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 9
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_415_UNKNOWN_CONTENT_TYPE"

    const/4 v7, 0x5

    const/16 v8, 0x19f

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_415_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_423_PARAMETERS_OUT_OF_BOUND"

    const/4 v8, 0x6

    const/16 v9, 0x1a7

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_423_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_481_SESSION_DOES_NOT_EXIST"

    const/4 v9, 0x7

    const/16 v10, 0x1e1

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_481_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_501_UNKNOWN_METHOD"

    const/16 v10, 0x8

    const/16 v11, 0x1f5

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_501_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 13
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_503_OUT_OF_SERVICE"

    const/16 v11, 0x9

    const/16 v12, 0x1f7

    invoke-direct {v0, v1, v11, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_503_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_506_SESSION_ON_OTHER_CONNECTION"

    const/16 v12, 0xa

    const/16 v13, 0x1fa

    invoke-direct {v0, v1, v12, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_506_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    const-string v1, "MSRP_UNKNOWN_RESPONSE"

    const/16 v13, 0xb

    const/16 v14, 0x3e7

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 3
    const/16 v1, 0xc

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_200_SUCCESSFUL_TRANSACTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v14, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_400_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_403_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_408_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_413_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_415_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_423_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_481_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_501_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_503_OUT_OF_SERVICE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_506_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->id:I

    .line 24
    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 3
    .param p0, "id"    # I

    .line 37
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->MSRP_UNKNOWN_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 39
    .local v0, "response":Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 43
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .locals 1
    .param p1, "id"    # I

    .line 33
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->id:I

    return v0
.end method
