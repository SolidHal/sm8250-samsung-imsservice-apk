.class public final enum Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;
.super Ljava/lang/Enum;
.source "EnumProvision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NewUserOptInCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

.field public static final enum DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

.field public static final enum DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

.field public static final enum ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    const-string v1, "ERR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    const-string v1, "DELETE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    .line 4
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->mId:I

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;
    .locals 1

    .line 4
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->mId:I

    return v0
.end method
