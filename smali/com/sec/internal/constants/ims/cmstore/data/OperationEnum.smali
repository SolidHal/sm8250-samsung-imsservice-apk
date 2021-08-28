.class public final enum Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;
.super Ljava/lang/Enum;
.source "OperationEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

.field public static final enum AddFlag:Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

.field public static final enum RemoveFlag:Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    const-string v1, "AddFlag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;->AddFlag:Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    const-string v1, "RemoveFlag"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;->RemoveFlag:Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    .line 3
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;->AddFlag:Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    return-object v0
.end method
