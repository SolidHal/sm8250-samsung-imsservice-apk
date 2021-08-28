.class public final enum Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;
.super Ljava/lang/Enum;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ISIM_VALIDITY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

.field public static final enum HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

.field public static final enum IMPI_NOT_EXIST:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

.field public static final enum IMPU_INVALID:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

.field public static final enum IMPU_NOT_EXISTS:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 149
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    const-string v1, "IMPU_NOT_EXISTS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    .line 150
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    const-string v1, "IMPU_INVALID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    .line 151
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    const-string v1, "IMPI_NOT_EXIST"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    .line 152
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    const-string v1, "HOME_DOMAIN_NOT_EXIST"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->HOME_DOMAIN_NOT_EXIST:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    .line 147
    new-array v1, v5, [Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    sget-object v5, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPU_NOT_EXISTS:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPU_INVALID:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->IMPI_NOT_EXIST:Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    aput-object v2, v1, v4

    aput-object v0, v1, v6

    sput-object v1, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->$VALUES:[Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->mCode:I

    .line 157
    iput p3, p0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->mCode:I

    .line 158
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    const-class v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;
    .locals 1

    .line 147
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->$VALUES:[Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$ISIM_VALIDITY;->mCode:I

    return v0
.end method
