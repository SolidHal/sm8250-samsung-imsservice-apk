.class public final enum Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;
.super Ljava/lang/Enum;
.source "SearchTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

.field public static final enum AllTextAttributes:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

.field public static final enum Attribute:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

.field public static final enum CreatedObjects:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

.field public static final enum Date:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

.field public static final enum Flag:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

.field public static final enum PresetSearch:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

.field public static final enum VanishedObjects:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

.field public static final enum WholeWord:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    const-string v1, "Date"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->Date:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    const-string v1, "Attribute"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->Attribute:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    const-string v1, "AllTextAttributes"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->AllTextAttributes:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    const-string v1, "Flag"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->Flag:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    const-string v1, "WholeWord"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->WholeWord:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    const-string v1, "VanishedObjects"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->VanishedObjects:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    const-string v1, "CreatedObjects"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->CreatedObjects:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    const-string v1, "PresetSearch"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->PresetSearch:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    .line 3
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->Date:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    aput-object v10, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->Attribute:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->AllTextAttributes:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->Flag:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->WholeWord:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->VanishedObjects:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->CreatedObjects:Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/data/SearchTypeEnum;

    return-object v0
.end method
