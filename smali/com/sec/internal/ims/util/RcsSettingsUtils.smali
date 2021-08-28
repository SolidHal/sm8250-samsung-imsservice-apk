.class public Lcom/sec/internal/ims/util/RcsSettingsUtils;
.super Ljava/lang/Object;
.source "RcsSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/RcsSettingsUtils$SimEventListener;
    }
.end annotation


# static fields
.field private static final COUNTRY_AREA_CODE_IDX:I = 0x1

.field private static final COUNTRY_CODE_IDX:I = 0x0

.field private static final COUNTRY_CODE_PREFIX:Ljava/lang/String; = "+"

.field private static final ISO_ALPHA2_AFGHANISTAN:Ljava/lang/String; = "af"

.field private static final ISO_ALPHA2_ALBANIA:Ljava/lang/String; = "al"

.field private static final ISO_ALPHA2_ALGERIA:Ljava/lang/String; = "dz"

.field private static final ISO_ALPHA2_AMERICAN_SAMOA:Ljava/lang/String; = "as"

.field private static final ISO_ALPHA2_ANDORRA:Ljava/lang/String; = "ad"

.field private static final ISO_ALPHA2_ANGOLA:Ljava/lang/String; = "ao"

.field private static final ISO_ALPHA2_ANGUILLA:Ljava/lang/String; = "ai"

.field private static final ISO_ALPHA2_ANTARCTICA:Ljava/lang/String; = "aq"

.field private static final ISO_ALPHA2_ANTIGUA_BARBUDA:Ljava/lang/String; = "ag"

.field private static final ISO_ALPHA2_ARABEMIRATES:Ljava/lang/String; = "ae"

.field private static final ISO_ALPHA2_ARGENTINA:Ljava/lang/String; = "ar"

.field private static final ISO_ALPHA2_ARMENIA:Ljava/lang/String; = "am"

.field private static final ISO_ALPHA2_ARUBA:Ljava/lang/String; = "aw"

.field private static final ISO_ALPHA2_AUSTRALIA:Ljava/lang/String; = "au"

.field private static final ISO_ALPHA2_AUSTRIA:Ljava/lang/String; = "at"

.field private static final ISO_ALPHA2_AZERBAIJAN:Ljava/lang/String; = "az"

.field private static final ISO_ALPHA2_BAHAMAS:Ljava/lang/String; = "bs"

.field private static final ISO_ALPHA2_BAHRAIN:Ljava/lang/String; = "bh"

.field private static final ISO_ALPHA2_BANGLADESH:Ljava/lang/String; = "bd"

.field private static final ISO_ALPHA2_BARBADOS:Ljava/lang/String; = "bb"

.field private static final ISO_ALPHA2_BELARUS:Ljava/lang/String; = "by"

.field private static final ISO_ALPHA2_BELGIUM:Ljava/lang/String; = "be"

.field private static final ISO_ALPHA2_BELIZE:Ljava/lang/String; = "bz"

.field private static final ISO_ALPHA2_BENIN:Ljava/lang/String; = "bj"

.field private static final ISO_ALPHA2_BERMUDA:Ljava/lang/String; = "bm"

.field private static final ISO_ALPHA2_BHUTAN:Ljava/lang/String; = "bt"

.field private static final ISO_ALPHA2_BOLIVIA:Ljava/lang/String; = "bo"

.field private static final ISO_ALPHA2_BOSNIA_HERZEGOVINA:Ljava/lang/String; = "ba"

.field private static final ISO_ALPHA2_BOTSWANA:Ljava/lang/String; = "bw"

.field private static final ISO_ALPHA2_BOUVET_ISLAND:Ljava/lang/String; = "bv"

.field private static final ISO_ALPHA2_BRAZIL:Ljava/lang/String; = "br"

.field private static final ISO_ALPHA2_BRITISH_INDIAN_OCEAN_TERRITORY:Ljava/lang/String; = "io"

.field private static final ISO_ALPHA2_BRUNEI:Ljava/lang/String; = "bn"

.field private static final ISO_ALPHA2_BULGARIA:Ljava/lang/String; = "bg"

.field private static final ISO_ALPHA2_BURKINAFASO:Ljava/lang/String; = "bf"

.field private static final ISO_ALPHA2_BURUNDI:Ljava/lang/String; = "bi"

.field private static final ISO_ALPHA2_CABO_VERDE:Ljava/lang/String; = "cv"

.field private static final ISO_ALPHA2_CAMBODIA:Ljava/lang/String; = "kh"

.field private static final ISO_ALPHA2_CAMEROON:Ljava/lang/String; = "cm"

.field private static final ISO_ALPHA2_CANADA:Ljava/lang/String; = "ca"

.field private static final ISO_ALPHA2_CAYMAN_ISLANDS:Ljava/lang/String; = "ky"

.field private static final ISO_ALPHA2_CENTRAL_AFRICAN_REPUBLIC:Ljava/lang/String; = "cf"

.field private static final ISO_ALPHA2_CHAD:Ljava/lang/String; = "td"

.field private static final ISO_ALPHA2_CHILE:Ljava/lang/String; = "cl"

.field private static final ISO_ALPHA2_CHINA:Ljava/lang/String; = "cn"

.field private static final ISO_ALPHA2_CHRISTMAS_ISLAND:Ljava/lang/String; = "cx"

.field private static final ISO_ALPHA2_COCOS_ISLANDS:Ljava/lang/String; = "cc"

.field private static final ISO_ALPHA2_COLOMBIA:Ljava/lang/String; = "co"

.field private static final ISO_ALPHA2_COMOROS:Ljava/lang/String; = "km"

.field private static final ISO_ALPHA2_CONGO:Ljava/lang/String; = "cg"

.field private static final ISO_ALPHA2_CONGO_DEMOCRATIC_REPUBLIC:Ljava/lang/String; = "cd"

.field private static final ISO_ALPHA2_COOK_ISLANDS:Ljava/lang/String; = "ck"

.field private static final ISO_ALPHA2_COSTA_RICA:Ljava/lang/String; = "cr"

.field private static final ISO_ALPHA2_COTE_D_IVOIRE:Ljava/lang/String; = "ci"

.field private static final ISO_ALPHA2_CROATIA:Ljava/lang/String; = "hr"

.field private static final ISO_ALPHA2_CUBA:Ljava/lang/String; = "cu"

.field private static final ISO_ALPHA2_CYPRUS:Ljava/lang/String; = "cy"

.field private static final ISO_ALPHA2_CZECHIA:Ljava/lang/String; = "cz"

.field private static final ISO_ALPHA2_DENMARK:Ljava/lang/String; = "dk"

.field private static final ISO_ALPHA2_DJIBOUTI:Ljava/lang/String; = "dj"

.field private static final ISO_ALPHA2_DOMINICA:Ljava/lang/String; = "dm"

.field private static final ISO_ALPHA2_DOMINICAN_REPUBLIC:Ljava/lang/String; = "do"

.field private static final ISO_ALPHA2_ECUADOR:Ljava/lang/String; = "ec"

.field private static final ISO_ALPHA2_EGYPT:Ljava/lang/String; = "eg"

.field private static final ISO_ALPHA2_EL_SALVADOR:Ljava/lang/String; = "sv"

.field private static final ISO_ALPHA2_EQUATORIAL:Ljava/lang/String; = "gq"

.field private static final ISO_ALPHA2_ERITREA:Ljava/lang/String; = "er"

.field private static final ISO_ALPHA2_ESTONIA:Ljava/lang/String; = "ee"

.field private static final ISO_ALPHA2_ESWATINI:Ljava/lang/String; = "sz"

.field private static final ISO_ALPHA2_ETHIOPIA:Ljava/lang/String; = "et"

.field private static final ISO_ALPHA2_FALKLAND_ISLANDS:Ljava/lang/String; = "fk"

.field private static final ISO_ALPHA2_FAROE_ISLANDS:Ljava/lang/String; = "fo"

.field private static final ISO_ALPHA2_FIJI:Ljava/lang/String; = "fj"

.field private static final ISO_ALPHA2_FINLAND:Ljava/lang/String; = "fi"

.field private static final ISO_ALPHA2_FRANCE:Ljava/lang/String; = "fr"

.field private static final ISO_ALPHA2_FRENCH_GUIANA:Ljava/lang/String; = "gf"

.field private static final ISO_ALPHA2_FRENCH_POLYNESIA:Ljava/lang/String; = "pf"

.field private static final ISO_ALPHA2_FRENCH_SOUTHERN_TERRITORIES:Ljava/lang/String; = "tf"

.field private static final ISO_ALPHA2_GABON:Ljava/lang/String; = "ga"

.field private static final ISO_ALPHA2_GAMBIA:Ljava/lang/String; = "gm"

.field private static final ISO_ALPHA2_GEORGIA:Ljava/lang/String; = "ge"

.field private static final ISO_ALPHA2_GERMANY:Ljava/lang/String; = "de"

.field private static final ISO_ALPHA2_GHANA:Ljava/lang/String; = "gh"

.field private static final ISO_ALPHA2_GIBRALTAR:Ljava/lang/String; = "gi"

.field private static final ISO_ALPHA2_GREAT_BRITAIN:Ljava/lang/String; = "gb"

.field private static final ISO_ALPHA2_GREECE:Ljava/lang/String; = "gr"

.field private static final ISO_ALPHA2_GREENLAND:Ljava/lang/String; = "gl"

.field private static final ISO_ALPHA2_GRENADA:Ljava/lang/String; = "gd"

.field private static final ISO_ALPHA2_GUADELOUPE:Ljava/lang/String; = "gp"

.field private static final ISO_ALPHA2_GUAM:Ljava/lang/String; = "gu"

.field private static final ISO_ALPHA2_GUATEMALA:Ljava/lang/String; = "gt"

.field private static final ISO_ALPHA2_GUINEA:Ljava/lang/String; = "gn"

.field private static final ISO_ALPHA2_GUINEA_BISSAU:Ljava/lang/String; = "gw"

.field private static final ISO_ALPHA2_GUYANA:Ljava/lang/String; = "gy"

.field private static final ISO_ALPHA2_HAITI:Ljava/lang/String; = "ht"

.field private static final ISO_ALPHA2_HEARD_MCDONALD_ISLANDS:Ljava/lang/String; = "hm"

.field private static final ISO_ALPHA2_HOLYSEE:Ljava/lang/String; = "va"

.field private static final ISO_ALPHA2_HONDURAS:Ljava/lang/String; = "hn"

.field private static final ISO_ALPHA2_HONGKONG:Ljava/lang/String; = "hk"

.field private static final ISO_ALPHA2_HUNGARY:Ljava/lang/String; = "hu"

.field private static final ISO_ALPHA2_ICELAND:Ljava/lang/String; = "is"

.field private static final ISO_ALPHA2_INDIA:Ljava/lang/String; = "in"

.field private static final ISO_ALPHA2_INDONESIA:Ljava/lang/String; = "id"

.field private static final ISO_ALPHA2_IRAN:Ljava/lang/String; = "ir"

.field private static final ISO_ALPHA2_IRAQ:Ljava/lang/String; = "iq"

.field private static final ISO_ALPHA2_IRELAND:Ljava/lang/String; = "ie"

.field private static final ISO_ALPHA2_ISRAEL:Ljava/lang/String; = "il"

.field private static final ISO_ALPHA2_ITALY:Ljava/lang/String; = "it"

.field private static final ISO_ALPHA2_JAMAICA:Ljava/lang/String; = "jm"

.field private static final ISO_ALPHA2_JAPAN:Ljava/lang/String; = "jp"

.field private static final ISO_ALPHA2_JORDAN:Ljava/lang/String; = "jo"

.field private static final ISO_ALPHA2_KAZAKHSTAN:Ljava/lang/String; = "kz"

.field private static final ISO_ALPHA2_KENYA:Ljava/lang/String; = "ke"

.field private static final ISO_ALPHA2_KIRIBATI:Ljava/lang/String; = "ki"

.field private static final ISO_ALPHA2_KUWAIT:Ljava/lang/String; = "kw"

.field private static final ISO_ALPHA2_KYRGYZSTAN:Ljava/lang/String; = "kg"

.field private static final ISO_ALPHA2_LAO_PEOPLES_DEMOCRATIC_REPUBLIC:Ljava/lang/String; = "la"

.field private static final ISO_ALPHA2_LATVIA:Ljava/lang/String; = "lv"

.field private static final ISO_ALPHA2_LEBANON:Ljava/lang/String; = "lb"

.field private static final ISO_ALPHA2_LESOTHO:Ljava/lang/String; = "ls"

.field private static final ISO_ALPHA2_LIBERIA:Ljava/lang/String; = "lr"

.field private static final ISO_ALPHA2_LIBYA:Ljava/lang/String; = "ly"

.field private static final ISO_ALPHA2_LIECHTENSTEIN:Ljava/lang/String; = "li"

.field private static final ISO_ALPHA2_LITHUANIA:Ljava/lang/String; = "lt"

.field private static final ISO_ALPHA2_LUXEMBOURG:Ljava/lang/String; = "lu"

.field private static final ISO_ALPHA2_MACAO:Ljava/lang/String; = "mo"

.field private static final ISO_ALPHA2_MADAGASCAR:Ljava/lang/String; = "mg"

.field private static final ISO_ALPHA2_MALAWI:Ljava/lang/String; = "mw"

.field private static final ISO_ALPHA2_MALAYSIA:Ljava/lang/String; = "my"

.field private static final ISO_ALPHA2_MALDIVES:Ljava/lang/String; = "mv"

.field private static final ISO_ALPHA2_MALI:Ljava/lang/String; = "ml"

.field private static final ISO_ALPHA2_MALTA:Ljava/lang/String; = "mt"

.field private static final ISO_ALPHA2_MARSHALL_ISLANDS:Ljava/lang/String; = "mh"

.field private static final ISO_ALPHA2_MARTINIQUE:Ljava/lang/String; = "mq"

.field private static final ISO_ALPHA2_MAURITANIA:Ljava/lang/String; = "mr"

.field private static final ISO_ALPHA2_MAURITIUS:Ljava/lang/String; = "mu"

.field private static final ISO_ALPHA2_MAYOTTE:Ljava/lang/String; = "yt"

.field private static final ISO_ALPHA2_MEXICO:Ljava/lang/String; = "mx"

.field private static final ISO_ALPHA2_MICRONESIA:Ljava/lang/String; = "fm"

.field private static final ISO_ALPHA2_MOLDOVA:Ljava/lang/String; = "md"

.field private static final ISO_ALPHA2_MONACO:Ljava/lang/String; = "mc"

.field private static final ISO_ALPHA2_MONGOLIA:Ljava/lang/String; = "mn"

.field private static final ISO_ALPHA2_MONTENEGRO:Ljava/lang/String; = "me"

.field private static final ISO_ALPHA2_MONTSERRAT:Ljava/lang/String; = "ms"

.field private static final ISO_ALPHA2_MOROCCO:Ljava/lang/String; = "ma"

.field private static final ISO_ALPHA2_MOZAMBIQUE:Ljava/lang/String; = "mz"

.field private static final ISO_ALPHA2_MYANMAR:Ljava/lang/String; = "mm"

.field private static final ISO_ALPHA2_NAMIBIA:Ljava/lang/String; = "na"

.field private static final ISO_ALPHA2_NAURU:Ljava/lang/String; = "nr"

.field private static final ISO_ALPHA2_NEPAL:Ljava/lang/String; = "np"

.field private static final ISO_ALPHA2_NETHERLANDS:Ljava/lang/String; = "nl"

.field private static final ISO_ALPHA2_NETHERLANDS_ANTILLES:Ljava/lang/String; = "an"

.field private static final ISO_ALPHA2_NEW_CALEDONIA:Ljava/lang/String; = "nc"

.field private static final ISO_ALPHA2_NEW_ZEALAND:Ljava/lang/String; = "nz"

.field private static final ISO_ALPHA2_NICARAGUA:Ljava/lang/String; = "ni"

.field private static final ISO_ALPHA2_NIGER:Ljava/lang/String; = "ne"

.field private static final ISO_ALPHA2_NIGERIA:Ljava/lang/String; = "ng"

.field private static final ISO_ALPHA2_NIUE:Ljava/lang/String; = "nu"

.field private static final ISO_ALPHA2_NORFOLK_ISLAND:Ljava/lang/String; = "nf"

.field private static final ISO_ALPHA2_NORTHERN_MARIANA_ISLANDS:Ljava/lang/String; = "mp"

.field private static final ISO_ALPHA2_NORTH_KOREA:Ljava/lang/String; = "kp"

.field private static final ISO_ALPHA2_NORTH_MACEDONIA:Ljava/lang/String; = "mk"

.field private static final ISO_ALPHA2_NORWAY:Ljava/lang/String; = "no"

.field private static final ISO_ALPHA2_OMAN:Ljava/lang/String; = "om"

.field private static final ISO_ALPHA2_PAKISTAN:Ljava/lang/String; = "pk"

.field private static final ISO_ALPHA2_PALAU:Ljava/lang/String; = "pw"

.field private static final ISO_ALPHA2_PALESTINE:Ljava/lang/String; = "ps"

.field private static final ISO_ALPHA2_PANAMA:Ljava/lang/String; = "pa"

.field private static final ISO_ALPHA2_PAPUA_NEW_GUINEA:Ljava/lang/String; = "pg"

.field private static final ISO_ALPHA2_PARAGUAY:Ljava/lang/String; = "py"

.field private static final ISO_ALPHA2_PERU:Ljava/lang/String; = "pe"

.field private static final ISO_ALPHA2_PHILIPPINES:Ljava/lang/String; = "ph"

.field private static final ISO_ALPHA2_PITCAIRN:Ljava/lang/String; = "pn"

.field private static final ISO_ALPHA2_POLAND:Ljava/lang/String; = "pl"

.field private static final ISO_ALPHA2_PORTUGAL:Ljava/lang/String; = "pt"

.field private static final ISO_ALPHA2_PUERTO_RICO:Ljava/lang/String; = "pr"

.field private static final ISO_ALPHA2_QATAR:Ljava/lang/String; = "qa"

.field private static final ISO_ALPHA2_REUNION:Ljava/lang/String; = "re"

.field private static final ISO_ALPHA2_ROMANIA:Ljava/lang/String; = "ro"

.field private static final ISO_ALPHA2_RUSSIA:Ljava/lang/String; = "ru"

.field private static final ISO_ALPHA2_RWANDA:Ljava/lang/String; = "rw"

.field private static final ISO_ALPHA2_SAINTKITTS:Ljava/lang/String; = "kn"

.field private static final ISO_ALPHA2_SAINTVINCENT:Ljava/lang/String; = "vc"

.field private static final ISO_ALPHA2_SAINT_HELENA:Ljava/lang/String; = "sh"

.field private static final ISO_ALPHA2_SAINT_LUCIA:Ljava/lang/String; = "lc"

.field private static final ISO_ALPHA2_SAINT_PIERRE_MIQUELON:Ljava/lang/String; = "pm"

.field private static final ISO_ALPHA2_SAMOA:Ljava/lang/String; = "ws"

.field private static final ISO_ALPHA2_SAN_MARINO:Ljava/lang/String; = "sm"

.field private static final ISO_ALPHA2_SAO_TOME_PRINCIPE:Ljava/lang/String; = "st"

.field private static final ISO_ALPHA2_SAUDI_ARABIA:Ljava/lang/String; = "sa"

.field private static final ISO_ALPHA2_SENEGAL:Ljava/lang/String; = "sn"

.field private static final ISO_ALPHA2_SERBIA:Ljava/lang/String; = "rs"

.field private static final ISO_ALPHA2_SEYCHELLES:Ljava/lang/String; = "sc"

.field private static final ISO_ALPHA2_SIERRA_LEONE:Ljava/lang/String; = "sl"

.field private static final ISO_ALPHA2_SINGAPORE:Ljava/lang/String; = "sg"

.field private static final ISO_ALPHA2_SLOVAKIA:Ljava/lang/String; = "sk"

.field private static final ISO_ALPHA2_SLOVENIA:Ljava/lang/String; = "si"

.field private static final ISO_ALPHA2_SOLOMON_ISLANDS:Ljava/lang/String; = "sb"

.field private static final ISO_ALPHA2_SOMALIA:Ljava/lang/String; = "so"

.field private static final ISO_ALPHA2_SOUTHAFRICA:Ljava/lang/String; = "za"

.field private static final ISO_ALPHA2_SOUTH_GEORGIA:Ljava/lang/String; = "gs"

.field private static final ISO_ALPHA2_SOUTH_KOREA:Ljava/lang/String; = "kr"

.field private static final ISO_ALPHA2_SPAIN:Ljava/lang/String; = "es"

.field private static final ISO_ALPHA2_SRILANKA:Ljava/lang/String; = "lk"

.field private static final ISO_ALPHA2_SUDAN:Ljava/lang/String; = "sd"

.field private static final ISO_ALPHA2_SURINAME:Ljava/lang/String; = "sr"

.field private static final ISO_ALPHA2_SVALBARD_JAN_MAYEN:Ljava/lang/String; = "sj"

.field private static final ISO_ALPHA2_SWEDEN:Ljava/lang/String; = "se"

.field private static final ISO_ALPHA2_SWITZERLAND:Ljava/lang/String; = "ch"

.field private static final ISO_ALPHA2_SYRIA:Ljava/lang/String; = "sy"

.field private static final ISO_ALPHA2_TAIWAN:Ljava/lang/String; = "tw"

.field private static final ISO_ALPHA2_TAJIKISTAN:Ljava/lang/String; = "tj"

.field private static final ISO_ALPHA2_TANZANIA:Ljava/lang/String; = "tz"

.field private static final ISO_ALPHA2_THAILAND:Ljava/lang/String; = "th"

.field private static final ISO_ALPHA2_TIMOR_LESTE:Ljava/lang/String; = "tl"

.field private static final ISO_ALPHA2_TOGO:Ljava/lang/String; = "tg"

.field private static final ISO_ALPHA2_TOKELAU:Ljava/lang/String; = "tk"

.field private static final ISO_ALPHA2_TONGA:Ljava/lang/String; = "to"

.field private static final ISO_ALPHA2_TRINIDAD_TOBAGO:Ljava/lang/String; = "tt"

.field private static final ISO_ALPHA2_TUNISIA:Ljava/lang/String; = "tn"

.field private static final ISO_ALPHA2_TURKEY:Ljava/lang/String; = "tr"

.field private static final ISO_ALPHA2_TURKMENISTAN:Ljava/lang/String; = "tm"

.field private static final ISO_ALPHA2_TURKS_CAICOS_ISLANDS:Ljava/lang/String; = "tc"

.field private static final ISO_ALPHA2_TUVALU:Ljava/lang/String; = "tv"

.field private static final ISO_ALPHA2_UGANDA:Ljava/lang/String; = "ug"

.field private static final ISO_ALPHA2_UKRAINE:Ljava/lang/String; = "ua"

.field private static final ISO_ALPHA2_URUGUAY:Ljava/lang/String; = "uy"

.field private static final ISO_ALPHA2_US:Ljava/lang/String; = "us"

.field private static final ISO_ALPHA2_US_MINO_ROUTLYING_ISLANDS:Ljava/lang/String; = "um"

.field private static final ISO_ALPHA2_UZBEKISTAN:Ljava/lang/String; = "uz"

.field private static final ISO_ALPHA2_VANUATU:Ljava/lang/String; = "vu"

.field private static final ISO_ALPHA2_VENEZUELA:Ljava/lang/String; = "ve"

.field private static final ISO_ALPHA2_VIETNAM:Ljava/lang/String; = "vn"

.field private static final ISO_ALPHA2_VIRGINISLANDS_BRITISH:Ljava/lang/String; = "vg"

.field private static final ISO_ALPHA2_VIRGINISLANDS_US:Ljava/lang/String; = "vi"

.field private static final ISO_ALPHA2_WALLISFUTUNA:Ljava/lang/String; = "wf"

.field private static final ISO_ALPHA2_WESTERN_SAHARA:Ljava/lang/String; = "eh"

.field private static final ISO_ALPHA2_YEMEN:Ljava/lang/String; = "ye"

.field private static final ISO_ALPHA2_ZAMBIA:Ljava/lang/String; = "zm"

.field private static final ISO_ALPHA2_ZIMBABWE:Ljava/lang/String; = "zw"

.field private static final WHERE_CLAUSE:Ljava/lang/String;

.field private static final sCountryCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDatabaseUri:Landroid/net/Uri;

.field private static sInstance:Lcom/sec/internal/ims/util/RcsSettingsUtils;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sInstance:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->WHERE_CLAUSE:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sDatabaseUri:Landroid/net/Uri;

    .line 324
    new-instance v0, Lcom/sec/internal/ims/util/RcsSettingsUtils$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sCountryCodes:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/sec/internal/ims/util/RcsSettingsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->mContext:Landroid/content/Context;

    .line 594
    iput-object p1, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->mContext:Landroid/content/Context;

    .line 595
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/util/RcsSettingsUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;
    .locals 1

    .line 793
    sget-object v0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sInstance:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/util/RcsSettingsUtils;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/util/RcsSettingsUtils;

    monitor-enter v0

    .line 785
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sInstance:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-nez v1, :cond_0

    .line 786
    new-instance v1, Lcom/sec/internal/ims/util/RcsSettingsUtils;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sInstance:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 787
    invoke-direct {v1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->registerSIMListener()V

    .line 789
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sInstance:Lcom/sec/internal/ims/util/RcsSettingsUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 784
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private registerSIMListener()V
    .locals 3

    .line 780
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 781
    .local v0, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    new-instance v1, Lcom/sec/internal/ims/util/RcsSettingsUtils$SimEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils$SimEventListener;-><init>(Lcom/sec/internal/ims/util/RcsSettingsUtils;Lcom/sec/internal/ims/util/RcsSettingsUtils$1;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 782
    return-void
.end method


# virtual methods
.method public getCountryAreaCode()Ljava/lang/String;
    .locals 1

    .line 837
    const-string v0, "CountryAreaCode"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 833
    const-string v0, "MyCountryCode"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCCAndAC()V
    .locals 7

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->mContext:Landroid/content/Context;

    .line 709
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 711
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "countryCodeIso":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCCAndTc Can\'t read country code from SIM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void

    .line 717
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sCountryCodes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 718
    .local v2, "countryCodeInfo":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 719
    iget-object v3, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "there is no country code info about this country: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void

    .line 722
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 723
    .local v3, "val":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "country code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 725
    const-string v4, "+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->setCountryCode(Ljava/lang/String;)V

    .line 728
    :cond_2
    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 729
    aget-object v3, v2, v5

    .line 730
    iget-object v4, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "country area code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 732
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->setCountryAreaCode(Ljava/lang/String;)V

    .line 735
    :cond_3
    return-void
.end method

.method public readParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .line 655
    sget-object v0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sInstance:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsInstance not created"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-object v1

    .line 659
    :cond_0
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    .line 662
    .local v6, "whereArg":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sDatabaseUri:Landroid/net/Uri;

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/internal/ims/util/RcsSettingsUtils;->WHERE_CLAUSE:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 664
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 665
    const-string/jumbo v1, "value"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "readParameter: %s = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    nop

    .line 672
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 667
    :cond_1
    return-object v1

    .line 669
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "readParameter cursor null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    nop

    .line 672
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 670
    :cond_3
    return-object v1

    .line 662
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v0
.end method

.method public setConfigValid(Z)V
    .locals 1
    .param p1, "configValid"    # Z

    .line 815
    const-string v0, "ConfigurationValidity"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 816
    return-void
.end method

.method public setCountryAreaCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryAreaCode"    # Ljava/lang/String;

    .line 846
    const-string v0, "CountryAreaCode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 842
    const-string v0, "MyCountryCode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-void
.end method

.method public setDefaultMessagingMethod(Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;)V
    .locals 2
    .param p1, "method"    # Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    .line 854
    invoke-virtual {p1}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultMessagingMethod"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void
.end method

.method public setMyContactId(Ljava/lang/String;)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .line 850
    const-string v0, "MyContactId"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void
.end method

.method public setServiceActivated(Z)V
    .locals 1
    .param p1, "serviceActivated"    # Z

    .line 804
    const-string v0, "ServiceActivated"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 805
    return-void
.end method

.method public updateSettings()V
    .locals 11

    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "regInfos":[Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    .line 742
    .local v1, "profilesCnt":I
    iget-object v2, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 744
    array-length v1, v0

    .line 746
    iget-object v2, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "update CONFIGURATION_VALIDITY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->setConfigValid(Z)V

    .line 749
    iget-object v4, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "update MY_CONTACT_ID"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    array-length v4, v0

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 752
    .local v6, "regInfo":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/ims/util/NameAddr;

    .line 753
    .local v8, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v8}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    .line 754
    .local v9, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v9}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 755
    .local v10, "contactId":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 756
    invoke-virtual {p0, v10}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->setMyContactId(Ljava/lang/String;)V

    .line 757
    iget-object v4, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v10, v5, v3

    .line 758
    invoke-virtual {v9}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 757
    const-string v2, "Load Number: %s from uri: %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    goto :goto_3

    .line 761
    .end local v8    # "addr":Lcom/sec/ims/util/NameAddr;
    .end local v9    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v10    # "contactId":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 751
    .end local v6    # "regInfo":Lcom/sec/ims/ImsRegistration;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 763
    :cond_3
    :goto_3
    return-void
.end method

.method public updateTapiSettings()V
    .locals 5

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateTapiSettings"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 768
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "rcs"

    invoke-static {v1, v2, v0}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 770
    .local v1, "isRcsEnable":Z
    iget-object v2, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check isRcsEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    nop

    .line 774
    if-eqz v1, :cond_1

    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    .line 773
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->setDefaultMessagingMethod(Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;)V

    .line 775
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->setServiceActivated(Z)V

    .line 776
    const-string v2, "ServiceAvailable"

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 777
    return-void
.end method

.method public writeBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 633
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void
.end method

.method public writeParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "ret":I
    sget-object v1, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sInstance:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_2

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeParameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 689
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 695
    .local v2, "whereArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/RcsSettingsUtils;->sDatabaseUri:Landroid/net/Uri;

    sget-object v5, Lcom/sec/internal/ims/util/RcsSettingsUtils;->WHERE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 700
    :goto_0
    goto :goto_1

    .line 698
    :catch_0
    move-exception v3

    .line 699
    .local v3, "e":Landroid/database/SQLException;
    iget-object v4, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL exception while insert Settings Parameter. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 696
    .end local v3    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v3

    .line 697
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 701
    :goto_1
    return v0

    .line 684
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "whereArgs":[Ljava/lang/String;
    :cond_1
    :goto_2
    return v0
.end method
