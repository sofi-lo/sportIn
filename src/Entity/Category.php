<?php

namespace App\Entity;

use App\Repository\CategoryRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CategoryRepository::class)
 */
class Category
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $type;

    /**
     * @ORM\Column(type="integer")
     */
    private $xpEvents;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $categorySport;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $categoryEvent;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getType(): ?string
    {
        return $this->type;
    }

    public function setType(string $type): self
    {
        $this->type = $type;

        return $this;
    }

    public function getXpEvents(): ?int
    {
        return $this->xpEvents;
    }

    public function setXpEvents(int $xpEvents): self
    {
        $this->xpEvents = $xpEvents;

        return $this;
    }

    public function getCategorySport(): ?string
    {
        return $this->categorySport;
    }

    public function setCategorySport(string $categorySport): self
    {
        $this->categorySport = $categorySport;

        return $this;
    }

    public function getCategoryEvent(): ?string
    {
        return $this->categoryEvent;
    }

    public function setCategoryEvent(string $categoryEvent): self
    {
        $this->categoryEvent = $categoryEvent;

        return $this;
    }
}
