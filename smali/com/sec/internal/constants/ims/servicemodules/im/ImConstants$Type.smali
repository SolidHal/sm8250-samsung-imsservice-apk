.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
.super Ljava/lang/Enum;
.source "ImConstants.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_LEADER_INFORMED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_USER_KICKOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field public static final enum TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 198
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "MULTIMEDIA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 203
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 208
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "LOCATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 213
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 218
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM_USER_LEFT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 223
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM_USER_KICKOUT"

    const/4 v7, 0x5

    const/16 v8, 0xe

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_KICKOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 233
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM_USER_JOINED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 238
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM_LEADER_CHANGED"

    const/4 v9, 0x7

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 243
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "MULTIMEDIA_PUBLICACCOUNT"

    const/16 v11, 0xb

    invoke-direct {v0, v1, v10, v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 248
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "TEXT_PUBLICACCOUNT"

    const/16 v12, 0x9

    const/16 v13, 0xc

    invoke-direct {v0, v1, v12, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 254
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    const-string v1, "SYSTEM_LEADER_INFORMED"

    const/16 v13, 0xa

    const/16 v14, 0xd

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_INFORMED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 194
    new-array v1, v11, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v11, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_KICKOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_USER_JOINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->SYSTEM_LEADER_CHANGED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 256
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

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

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 260
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->id:I

    .line 261
    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 2
    .param p0, "id"    # I

    .line 264
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 194
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1

    .line 194
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 2
    .param p1, "id"    # I

    .line 274
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object v0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->id:I

    return v0
.end method
