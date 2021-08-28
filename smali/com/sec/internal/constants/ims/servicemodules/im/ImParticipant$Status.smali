.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
.super Ljava/lang/Enum;
.source "ImParticipant.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field public static final enum TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 151
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 156
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "INVITED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 161
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "ACCEPTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 166
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "DECLINED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 171
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "TIMEOUT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 176
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "GONE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 181
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "TO_INVITE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 186
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "FAILED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 191
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v1, "PENDING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 147
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    aput-object v11, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 194
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

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

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 197
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->id:I

    .line 198
    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 2
    .param p0, "id"    # I

    .line 211
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 1

    .line 147
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 2
    .param p1, "id"    # I

    .line 207
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object v0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->id:I

    return v0
.end method
